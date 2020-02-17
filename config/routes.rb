Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # root of your site
  root 'posts#index', as: 'home'


  # regular route
  get 'about' => 'pages#about', as: 'about' # On visiting 'about' page, we want to visit 'about' view in 'pages' controller 

  # resource route (maps HTTP verbs to controller actions)
  resources :posts do
  	resources :comments
  end
end
