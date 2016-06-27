class ArtworksController < ApplicationController
  def new
    @artwork = current_user.artworks.new
    @artwork.images.build
  end

  def create
    @artwork = current_user.artworks.new(artwork_params)
    binding.pry
    if @artwork.save
      redirect_to user_profile_path(current_user), notice: 'Artwork added'
    else
      flash[:alert] = 'Fail'
      render :new
    end
  end

  def show
    @user = User.find(params[:user_id])
    @artwork = @user.artworks.find(params[:id])
  end

  private

  def artwork_params
    params.require(:artwork).permit(:title, :price, :media_list, :quantity,
      images_attributes: [:id, :file, :_destroy])
  end
end
