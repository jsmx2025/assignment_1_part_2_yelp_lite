class ApplicationController < ActionController::Base
  before_action :authenticate_user_id!

  protect_from_forgery with: :exception
end
