class ProfilesController < ApplicationController
  def show
  	@user = User.find_by_battle_tag_name(params[:battle_tag_name])
  	if @user
  		@shouts = @user.shouts.all
  		render action: :show

  	else
  		render file: 'public/404', status: 404, formats: [:html]
  	end
  end
end
