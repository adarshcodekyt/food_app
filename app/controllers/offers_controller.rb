class OffersController < ApplicationController
before_action :find_offer, only: [:show, :edit, :update, :destroy]

def index
@offers = Offer.all	


end

def new
@offer = Offer.new
end

def show
end

def edit
end

def create
 @offer = Offer.create(page_params)
  if @offer.save
  redirect_to offers_path
end	
end

def update
	if @offer.update(page_params)
	 redirect_to offers_path
		else
			render 'edit'
		end	
end

def destroy
    @offer.destroy
    redirect_to offers_path
end




private


def page_params
  params.require(:offer).permit(:offer_name,:offer_description,:discount,:coupon_code,:validate_form,:validate_till)
end


def find_offer

  @offer = Offer.find(params[:id])
	
end

end




