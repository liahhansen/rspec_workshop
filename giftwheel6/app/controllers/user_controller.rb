class UserController < ApplicationController
  layout "_user"
  def new
    @title = "Add a Giftwheel Participant"
    # protect_from_forgery :only => [:create, :update, :destroy]
    if request.post? and params[:user]
       # logger.info params[:user].inspect
       # raise params[:user].inspect
      @user = User.new(params[:user])
      if @user.save
         session[:user_id] = @user.id
        flash[:notice] = "User #{@user.first_name} created!"
        redirect_to :action => "list" 
      end
    end
  end

  def index
    @users = User.all
    @title = "Gift Wheel Participants"

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @users }
    end
  end
  
  def destroy
    @user = User.find(params[:id])
    @user.destroy
    flash[:notice] = "#{@user.first_name} was deleted from your giftwheel."
    respond_to do |format|
      format.html 
      format.xml  { head :ok }
    end
  end

  def list
    @users = User.all
    @title = "Gift Wheel Participants"

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @users }
    end
  end

  def spin
    @users = User.all
    @users.each do |user| 
      if user.position == 8
        user.position = 1
        user.save!
      else
        user.position+=1
        user.save!
      end     
    end
    redirect_to :action => "index" 
  end

end