class ProfilesController < ApplicationController
  def new
    @profile = current_user.build_profile
  end

  def create
    @profile = current_user.build_profile(profile_params)
    if @profile.save
      redirect_to user_profile_path
    end
  end

  def show
    @user = User.includes(:profile, artworks: [:images]).find(params[:user_id])
  end

  def edit
  end

  private

  def profile_params
    params.require(:profile).permit(:blurb, :location, :quote_list)
  end
end
