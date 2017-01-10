class OwnerprofilesController < ApplicationController
  def index
    @q = Ownerprofile.ransack(params[:q])
    @ownerprofiles = @q.result(:distinct => true).includes(:owner, :responses, :restaurants).page(params[:page]).per(10)

    render("ownerprofiles/index.html.erb")
  end

  def show
    @response = Response.new
    @ownerprofile = Ownerprofile.find(params[:id])

    render("ownerprofiles/show.html.erb")
  end

  def new
    @ownerprofile = Ownerprofile.new

    render("ownerprofiles/new.html.erb")
  end

  def create
    @ownerprofile = Ownerprofile.new

    @ownerprofile.owner_id = params[:owner_id]

    save_status = @ownerprofile.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/ownerprofiles/new", "/create_ownerprofile"
        redirect_to("/ownerprofiles")
      else
        redirect_back(:fallback_location => "/", :notice => "Ownerprofile created successfully.")
      end
    else
      render("ownerprofiles/new.html.erb")
    end
  end

  def edit
    @ownerprofile = Ownerprofile.find(params[:id])

    render("ownerprofiles/edit.html.erb")
  end

  def update
    @ownerprofile = Ownerprofile.find(params[:id])

    @ownerprofile.owner_id = params[:owner_id]

    save_status = @ownerprofile.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/ownerprofiles/#{@ownerprofile.id}/edit", "/update_ownerprofile"
        redirect_to("/ownerprofiles/#{@ownerprofile.id}", :notice => "Ownerprofile updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Ownerprofile updated successfully.")
      end
    else
      render("ownerprofiles/edit.html.erb")
    end
  end

  def destroy
    @ownerprofile = Ownerprofile.find(params[:id])

    @ownerprofile.destroy

    if URI(request.referer).path == "/ownerprofiles/#{@ownerprofile.id}"
      redirect_to("/", :notice => "Ownerprofile deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Ownerprofile deleted.")
    end
  end
end
