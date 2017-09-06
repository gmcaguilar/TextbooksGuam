class UsersController < ApplicationController

  before_action :require_admin, only: [:index, :destroy]
  before_action :require_ownership_permissions, only: [:show, :edit, :update]

  def require_ownership_permissions
    redirect_to '/' unless current_user == User.find(params[:id])
  end

  def destroy

  end

  def edit
    @user = current_user
  end

  def update
    if current_user.update(user_params)
      redirect_to current_user
    else
      render 'edit'
    end
  end

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @posts = @user.posts
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if (@user.save)
      session[:user_id] = @user.id
      redirect_to '/'
    else
      redirect_to 'signup'
    end
  end

  private
    def user_params
      params.require(:user).permit(:first_name, :last_name, :email, :password)
    end

end
