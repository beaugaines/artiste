class ImagesController < ApplicationController

  def update
    img = Image.find(params[:id])
    img.insert_at(params[:image][:position].to_i)
  end

end
