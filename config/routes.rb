Rails.application.routes.draw do
  devise_for :user_ids
  # Routes for the User_id resource:
  # READ
  get "/user_ids", :controller => "user_ids", :action => "index"
  get "/user_ids/:id", :controller => "user_ids", :action => "show"


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
