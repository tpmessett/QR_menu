class UsersController < ApplicationController
  before_action :set_user

  def boards
    @menus = @user.menus
  end

    private

    def set_user
      @user = User.friendly.find(params[:id])
    end

end
