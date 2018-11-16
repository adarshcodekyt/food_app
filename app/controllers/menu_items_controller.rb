class MenuItemsController < ApplicationController

before_action :find_menu_item, only: [:show, :edit, :update, :destroy]

def index
@menu_items = MenuItem.all	


end

def new
@menu_item = MenuItem.new
end

def show
end

def edit
end

def create
 @menu_item = MenuItem.create(page_params)
  if @menu_item.save
  redirect_to menu_items_path
end	
end

def update
	if @menu_item.update(page_params)
	 redirect_to menu_items_path
		else
			render 'edit'
		end	
end

def destroy
    @menu_item.destroy
    redirect_to menu_items_path
end







private


def page_params
  params.require(:menu_item).permit(:item_name,:item_price,:image_id,:special_category_id,:spicy_level,:offer_id,:item_description,:item_ingredients,:item_active,:preparation_time,:meal_type_id)
end


def find_menu_item

@menu_item = MenuItem.find(params[:id])

end	



end


      
