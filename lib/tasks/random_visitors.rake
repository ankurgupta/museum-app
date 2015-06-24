task :random_visitors, [:days_before] => :environment do |t, args|
  days_before = args[:days_before] == "1" ? 1.days : args[:days_before].to_i.days
  1000.times do
    random_enter_time = random_time days_before
    random_exit_time = exit_time random_enter_time, days_before
    Visitor.create!(enter_time: random_enter_time, exit_time: random_exit_time)
  end
end

private

def exit_time enter_time, days_before
  random_exit_time = random_time days_before
  random_exit_time <= enter_time ? exit_time(enter_time, days_before) : random_exit_time
end

def random_time days_before
  (Date.today-days_before + rand(1..23).hour + rand(0..59).minutes + rand(0..59).seconds).to_datetime
end



