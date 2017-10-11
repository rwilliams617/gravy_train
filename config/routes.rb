Rails.application.routes.draw do
  root to: 'pages#home'

  resources :courses #default gives you all the routes[CRUD]

  # resources :courses, only: => [:index, :show, :edit] you can use this to pick which routes you want to use
  # resources :courses, except: => [:index] or use this to take out routes you don't want
  
  # another way to use resources with more detail...
  # resources :courses, only => [] do
  # 	collection do = without id
  # 		get :index
  # 		get :new
  # 		post :create
  # 	end

  # 	memeber do = w/id
  # 		get :edit
  # 		get :show
 	# 		patch :update
  # 		put :update
  # 		delete :destroy
  # 	end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
