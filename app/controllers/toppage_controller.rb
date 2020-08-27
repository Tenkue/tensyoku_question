class ToppageController < ApplicationController
  def index
    @user = User.all
  end
end