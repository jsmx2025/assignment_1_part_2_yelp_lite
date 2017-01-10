class UserIdsController < ApplicationController
  def index
    @user_ids = UserId.page(params[:page]).per(10)
  end

  def show
    @user_id = UserId.find(params[:id])
  end
end
