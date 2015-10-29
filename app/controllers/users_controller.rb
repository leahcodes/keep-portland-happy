class UsersController < ApplicationController

  private
  def user_params
    params.require(:user).permit(:profile_image, :email, :password)
  end
end
