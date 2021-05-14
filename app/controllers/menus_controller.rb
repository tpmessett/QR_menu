class MenusController < ApplicationController
  def index
    @menus = policy_scope(Menu)
  end

  def new
    @menu = Menu.new
  end

  def create
    @menu = Menu.new(menu_params)
    if @menu.save
      redirect_to menu_path(@menu)
    else
      render :new
    end
  end

  def destroy
    @menu = Menu.find(params[:id])
    @menu.destroy
    redirect_to menus_path
  end

  def update
    @menu = Menu.friendly.find(params[:id])
    @menu.update(menu_params)
    redirect_to menu_path(@menu)
  end

  def edit
    @menu = Menu.find(params[:id])
  end

  def show
    @menu = Menu.friendly.find(params[:id])
  end

private

  def menu_params
    params.require(:menu).permit(:name, :slug)
  end
end
