
class AddressesController < ApplicationController
skip_before_action :verify_authenticity_token
before_action :find_address, only: [:show, :edit, :update, :destroy]

def index
@addresses = Address.all	

end

def new
@address = Address.new
	
end

def show
end

def edit


end

def create
 @address = Address.create(page_params)
  if @address.save
     redirect_to addresses_path
end	
end


def update
if @address.update(page_params)
	 redirect_to addresses_path
		else
			render 'edit'
		end	
	
end

def destroy
  @address.destroy
    redirect_to addresses_path


end





private


def page_params
  params.require(:address).permit(:user_id,:address1,:address2,:landmark,:zipcode)
end


def find_address

   @address = Address.find(params[:id])


end

end
