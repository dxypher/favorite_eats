class FavoritesController < ApplicationController
  respond_to :html, :js
  def index
    @favorites = current_user.favorites
  end

  def new
    @favorite = Favorite.new
  end

  def create
    @favorite = current_user.favorites.new(params[:favorite])
    @favorite.save
    @favorites = current_user.favorites
    respond_to do |format|
        format.js { render :layout=>false }
    end
  end

  def edit
    @favorite = Favorite.find(params[:id])
  end

  def update
    favorite = Favorite.find(params[:id])
    favorite.update_attributes(params[:favorite])
    favorite.save
    redirect_to favorites_path
  end

  def destroy
    @favorite_id = params[:id]
    Favorite.find(params[:id]).destroy
    respond_to do |format|
        format.html { redirect_to favorites_path }
    end
  end
end