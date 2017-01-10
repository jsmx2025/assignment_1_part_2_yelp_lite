class UserprofilesController < ApplicationController
  before_action :current_user_must_be_userprofile_user, :only => [:edit, :update, :destroy]

  def current_user_must_be_userprofile_user_id
    userprofile = Userprofile.find(params[:id])

    unless current_user == userprofile.user
      redirect_to :back, :alert => "You are not authorized for that."
    end
  end

  def index
    @userprofiles = Userprofile.all

    render("userprofiles/index.html.erb")
  end

  def show
    @userprofile = Userprofile.find(params[:id])

    render("userprofiles/show.html.erb")
  end

  def new
    @userprofile = Userprofile.new

    render("userprofiles/new.html.erb")
  end

  def create
    @userprofile = Userprofile.new

    @userprofile.user_id = params[:user_id]

    save_status = @userprofile.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/userprofiles/new", "/create_userprofile"
        redirect_to("/userprofiles")
      else
        redirect_back(:fallback_location => "/", :notice => "Userprofile created successfully.")
      end
    else
      render("userprofiles/new.html.erb")
    end
  end

  def edit
    @userprofile = Userprofile.find(params[:id])

    render("userprofiles/edit.html.erb")
  end

  def update
    @userprofile = Userprofile.find(params[:id])

    save_status = @userprofile.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/userprofiles/#{@userprofile.id}/edit", "/update_userprofile"
        redirect_to("/userprofiles/#{@userprofile.id}", :notice => "Userprofile updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Userprofile updated successfully.")
      end
    else
      render("userprofiles/edit.html.erb")
    end
  end

  def destroy
    @userprofile = Userprofile.find(params[:id])

    @userprofile.destroy

    if URI(request.referer).path == "/userprofiles/#{@userprofile.id}"
      redirect_to("/", :notice => "Userprofile deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Userprofile deleted.")
    end
  end
end
