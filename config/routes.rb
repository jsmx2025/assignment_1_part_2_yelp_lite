Rails.application.routes.draw do
  # Routes for the Restaurant resource:
  # CREATE
  get "/restaurants/new", :controller => "restaurants", :action => "new"
  post "/create_restaurant", :controller => "restaurants", :action => "create"

  # READ
  get "/restaurants", :controller => "restaurants", :action => "index"
  get "/restaurants/:id", :controller => "restaurants", :action => "show"

  # UPDATE
  get "/restaurants/:id/edit", :controller => "restaurants", :action => "edit"
  post "/update_restaurant/:id", :controller => "restaurants", :action => "update"

  # DELETE
  get "/delete_restaurant/:id", :controller => "restaurants", :action => "destroy"
  #------------------------------

  devise_for :user_ids
  # Routes for the User_id resource:
  # READ
  get "/user_ids", :controller => "user_ids", :action => "index"
  get "/user_ids/:id", :controller => "user_ids", :action => "show"


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
