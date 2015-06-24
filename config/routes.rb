Rails.application.routes.draw do
  
  post 'search_visitors' => 'home#search_visitors'
  
  root 'home#index'
  
end
