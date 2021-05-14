class UsersController < ApplicationController
  before_action :set_user

  def menus
    @menus = @user.menus
  end

    private

    def set_user
      @user = User.friendly.find(params[:id])
    end

end
