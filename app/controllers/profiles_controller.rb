class ProfilesController < ApplicationController
before_action :find_profile, only: [:show]

def index
end

def new

@profile = current_user.profiles.build

end

def create
  @profile = current_user.profiles.build(profile_params)
  if @profile.save
  redirect_to profile_path(@profile.user.id)
  else
  render "new"
  end
end	

def show
  @user = User.find(params[:id])	
  @products = Product.new
end

def edit
  @profiles = Profile.find(params[:id])

end

def update
	  @profile = Profile.find(params[:id])

    if @profile.update(profile_params)
        redirect_to profile_path(@profile.user.id)
 
		else
			render 'edit'
		end
	
end

def destroy
  @profile = Profile.find(params[:id])
  @profile.destroy
  redirect_to profile_path(@profile.user.id)
 end	
	
end

private

def profile_params
    
  params.require(:profile).permit(:company_name,:about_company,:minimun_order,:target_country,:company_image)
    
end

def find_profile

  @profiles = Profile.where(params[:id])

end
