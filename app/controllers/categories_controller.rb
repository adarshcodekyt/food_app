class CategoriesController < ApplicationController

before_action :find_category, only: [:show, :edit, :update, :destroy]

def index
@categories = Category.all	


end

def new
@category = Category.new	
end

def show
end

def edit
end

def create
 @category = Category.create(page_params)
  if @category.save
  redirect_to categories_path
end	
end

def update
	if @category.update(page_params)
	 redirect_to categories_path
		else
			render 'edit'
		end	
end




def destroy
  @category.destroy
    redirect_to categories_path


end





private


def page_params
  params.require(:category).permit(:category_name,:category_description)
end

def find_category
 @category = Category.find(params[:id])

end	

end

