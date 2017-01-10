Rails.application.routes.draw do
  # Routes for the Ownerprofile resource:
  # CREATE
  get "/ownerprofiles/new", :controller => "ownerprofiles", :action => "new"
  post "/create_ownerprofile", :controller => "ownerprofiles", :action => "create"

  # READ
  get "/ownerprofiles", :controller => "ownerprofiles", :action => "index"
  get "/ownerprofiles/:id", :controller => "ownerprofiles", :action => "show"

  # UPDATE
  get "/ownerprofiles/:id/edit", :controller => "ownerprofiles", :action => "edit"
  post "/update_ownerprofile/:id", :controller => "ownerprofiles", :action => "update"

  # DELETE
  get "/delete_ownerprofile/:id", :controller => "ownerprofiles", :action => "destroy"
  #------------------------------

  devise_for :owners
  # Routes for the Owner resource:
  # READ
  get "/owners", :controller => "owners", :action => "index"
  get "/owners/:id", :controller => "owners", :action => "show"


  # Routes for the Response resource:
  # CREATE
  get "/responses/new", :controller => "responses", :action => "new"
  post "/create_response", :controller => "responses", :action => "create"

  # READ
  get "/responses", :controller => "responses", :action => "index"
  get "/responses/:id", :controller => "responses", :action => "show"

  # UPDATE
  get "/responses/:id/edit", :controller => "responses", :action => "edit"
  post "/update_response/:id", :controller => "responses", :action => "update"

  # DELETE
  get "/delete_response/:id", :controller => "responses", :action => "destroy"
  #------------------------------

  # Routes for the Userprofile resource:
  # CREATE
  get "/userprofiles/new", :controller => "userprofiles", :action => "new"
  post "/create_userprofile", :controller => "userprofiles", :action => "create"

  # READ
  get "/userprofiles", :controller => "userprofiles", :action => "index"
  get "/userprofiles/:id", :controller => "userprofiles", :action => "show"

  # UPDATE
  get "/userprofiles/:id/edit", :controller => "userprofiles", :action => "edit"
  post "/update_userprofile/:id", :controller => "userprofiles", :action => "update"

  # DELETE
  get "/delete_userprofile/:id", :controller => "userprofiles", :action => "destroy"
  #------------------------------

  # Routes for the Tag resource:
  # CREATE
  get "/tags/new", :controller => "tags", :action => "new"
  post "/create_tag", :controller => "tags", :action => "create"

  # READ
  get "/tags", :controller => "tags", :action => "index"
  get "/tags/:id", :controller => "tags", :action => "show"

  # UPDATE
  get "/tags/:id/edit", :controller => "tags", :action => "edit"
  post "/update_tag/:id", :controller => "tags", :action => "update"

  # DELETE
  get "/delete_tag/:id", :controller => "tags", :action => "destroy"
  #------------------------------

  # Routes for the Rating resource:
  # CREATE
  get "/ratings/new", :controller => "ratings", :action => "new"
  post "/create_rating", :controller => "ratings", :action => "create"

  # READ
  get "/ratings", :controller => "ratings", :action => "index"
  get "/ratings/:id", :controller => "ratings", :action => "show"

  # UPDATE
  get "/ratings/:id/edit", :controller => "ratings", :action => "edit"
  post "/update_rating/:id", :controller => "ratings", :action => "update"

  # DELETE
  get "/delete_rating/:id", :controller => "ratings", :action => "destroy"
  #------------------------------

  # Routes for the Review resource:
  # CREATE
  get "/reviews/new", :controller => "reviews", :action => "new"
  post "/create_review", :controller => "reviews", :action => "create"

  # READ
  get "/reviews", :controller => "reviews", :action => "index"
  get "/reviews/:id", :controller => "reviews", :action => "show"

  # UPDATE
  get "/reviews/:id/edit", :controller => "reviews", :action => "edit"
  post "/update_review/:id", :controller => "reviews", :action => "update"

  # DELETE
  get "/delete_review/:id", :controller => "reviews", :action => "destroy"
  #------------------------------

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
