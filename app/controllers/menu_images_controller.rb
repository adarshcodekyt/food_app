class MenuImagesController < ApplicationController

before_action :find_menuimages, only: [:show, :edit, :update, :destroy]

def index
@menuimages = MenuImage.all	


end

def new
@menuimage = MenuImage.new
	
end

def show
end

def edit
end

def create
 @menuimage = MenuImage.create(page_params)
  if @menuimage.save
  redirect_to menu_images_path
end	
end

def update
	if @menuimage.update(page_params)
	 redirect_to menu_images_path
		else
			render 'edit'
		end	
end

def destroy
    @menuimage.destroy
    redirect_to menu_images_path
end




private


def page_params
  params.require(:menu_image).permit(:name,:title,:menuimage)
end


def find_menuimages

  @Menuimage = MenuImage.find(params[:id])

end


end
