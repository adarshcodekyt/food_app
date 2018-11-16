Rails.application.routes.draw do
  
  devise_for :users
  resources :sessions, only: [:create, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
     namespace 'api' do
    namespace 'v1' do
      resources :addresses
    end
  end

  namespace 'api' do
    namespace 'v1' do
       resources :categories
    end 
  end


    root to: "categories#index"

      resources :categories
      resources :addresses
      resources :categories
      resources :meal_types
      resources :menu_items
      resources :offers
      resources :special_categories
      resources :menu_images
    
end
