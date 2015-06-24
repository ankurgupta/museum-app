class HomeController < ApplicationController

  def index
  end

  def search_visitors
    time_to_check = params[:check_time].to_datetime
    @visitor_count = Visitor.where("enter_time <= ? and exit_time > ?", time_to_check, time_to_check).count
  end

end