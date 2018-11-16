class SpecialCategoriesController < ApplicationController

before_action :find_special_category, only: [:show, :edit, :update, :destroy]

def index
@special_categories = SpecialCategory.all	


end

def new
@special_category = SpecialCategory.new
end

def show
end

def edit
end

def create
 @special_category = SpecialCategory.create(page_params)
  if @special_category.save
  redirect_to special_categories_path
end	
end

def update

	if @special_category.update(page_params)
	 redirect_to special_categories_path
		else
			render 'edit'
		end	
      end

def destroy
    @special_category.destroy
    redirect_to special_categories_path
end







private


def page_params
  params.require(:special_category).permit(:special_category_name,:special_category_description)
end


def find_special_category

	@special_category = SpecialCategory.find(params[:id])
	
end

end




