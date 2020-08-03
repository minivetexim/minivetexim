class ProductsController < ApplicationController
 before_action :find_product, only: [:show, :edit, :update, :destroy]

def index	
@users = User.all
@profiles = Profile.all
@products = Product.all	
	
end

def new


end

def create
  @products = current_user.products.build(product_params)
  if @products.save
  redirect_to profile_path(@products.user.id)
  end
end	


def show
   @user = User.find(params[:id])	

end

def edit
@product = Product.find(params[:id])

end

def update
	@product = Product.find(params[:id])

	if @product.update(product_params)
			redirect_to profile_path(@product.user.id)
		else
			render 'edit'
		end
	
end

def destroy
  @product = Product.find(params[:id])
  @product.destroy
  redirect_to profile_path(@product.user.id)
 end	
	
end

private

def product_params
    
  params.require(:product).permit(:product_name,:product_price,:product_image)
    
end

def find_product

  @products = Product.where(params[:id])

end

