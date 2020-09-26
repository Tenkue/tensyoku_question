class UsersController < ApplicationController
  before_action :find_user, only: [:show, :edit, :update]

  def show
  end

  def edit
  end

  def update
    @user.update(user_params)
    redirect_to action: :show
  end

  private
  def user_params
    params.require(:user).permit(
      :nickname,
      :age,
      :image,
      :learning_method_id,
      language_ids: [])
  end

  def find_user
    @user = User.find(params[:id])
  end
end
