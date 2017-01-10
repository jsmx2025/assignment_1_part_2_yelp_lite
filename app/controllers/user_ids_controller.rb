class UserIdsController < ApplicationController
  def index
    @user_ids = UserId.all
  end

  def show
    @user_id = UserId.find(params[:id])
  end
end
