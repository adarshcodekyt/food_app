module Api
  module V1	
    class AddressesController < ApplicationController
skip_before_action :verify_authenticity_token



def index
addresses = Address.order('created_at DESC');
render json: {status: 'SUCCESS', message:'Loaded addresses', data:addresses},status: :ok
end


def show 

    address = Address.find(params[:id])
    render json: {status: 'SUCCESS', message:'Loaded address', data:address},status: :ok
end



def create
	address = Address.new(address_params)
    if address.save
     render json: {status: 'SUCCESS', message:'Loaded address', data:address},status: :ok
     else
     render json: {status: 'ERROR', message:'Address not saved', data:address.errors},status: :unprocessable_entity	
     end
 end


def destroy
        address = Address.find(params[:id])
        address.destroy
        render json: {status: 'SUCCESS', message:'Deleted address', data:address},status: :ok
      end


def update
	 address = Address.find(params[:id])
     if address.update_attributes(address_params)
       render json: {status: 'SUCCESS', message:'Updated address', data:address},status: :ok
     else
     render json: {status: 'ERROR', message:'Address not updated', data:address.errors},status: :unprocessable_entity	
     end
 end	



  private

      def address_params
        params.permit(:address1,:address2,:landmark,:zipcode)
      end

    end	
   end
 end


