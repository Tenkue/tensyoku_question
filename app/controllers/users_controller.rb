class UsersController < ApplicationController
  before_action :find_user   
  def show
  end

  def edit
  end

  def update
    user.update(user_params)
    redirect_to action: :show
  end

  private
  def user_params
    params.permit(:nickname, :age, :image)
  end

  def find_user
    @user = User.find(params[:id])
  end
end
