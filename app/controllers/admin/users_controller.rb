class Admin::UsersController < AdminController

  def index
    @users = User.page(params[:page]).per(6)
  end

  def update
    @user = User.find(params[:id])
    if @user.admin?
      @user.update(admin: false)
      redirect_to admin_users_url
    else
      @user.update(admin: true)
      redirect_to admin_users_url
    end
  end
end