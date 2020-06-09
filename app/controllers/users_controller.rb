class UsersController < ApplicationController
  def new
  end

  private

    def user_params
      params.require(:user).permit(:name, :email, :password,
                                   :password_confirmation)
    end

    # Предфильтры

    # Подтверждает вход пользователя
    def logged_in_user
      unless logged_in?
        store_location
        flash[:danger] = "Please log in."
        redirect_to login_url
      end
    end

    def correct_user
      @user = User.find(params[:id])
      redirect_to(root_url) unless current_user?(@user)
    end

    # Подтверждает администратора.
    def admin_user
      redirect_to(root_url) unless current_user.admin?
    end
end
