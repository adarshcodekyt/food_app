class MealTypesController < ApplicationController

before_action :find_category, only: [:show, :edit, :update, :destroy]


def index
@meal_types = MealType.all	


end

def new
	@meal_type = MealType.new
end

def show
end

def edit
end

def create
 @meal_type = MealType.create(page_params)
  if @meal_type.save
  redirect_to meal_types_path
end	
end

def update
	if @meal_type.update(page_params)
	 redirect_to meal_types_path
		else
			render 'edit'
		end	
end

def destroy
    @meal_type.destroy
    redirect_to meal_types_path
end





private


def page_params
  params.require(:meal_type).permit(:meal_type_name)
end


def find_category
 
  @meal_type = MealType.find(param[:id])

end	

end

