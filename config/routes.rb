Rails.application.routes.draw do



  get 'cliente/index'

  get 'especialistas/index'

  get 'administrador/indexprincipal'
  resources :administrador



  devise_for :users, :controllers => { registrations: 'registrations' }
 
  
  get 'ingresar/index'

  get 'historia/index'

 # get 'principal/index'

  root 'principal#index'

  resources :busy_times
  resources :hours
  resources :schedules
  
   #los resources contienen:
  # get "/hours"		index
  # post "/hours"		create
  # delete "/hours"		delete
  # get "/hours/:id"	show
  # get "/hours/new"	new
  # get "/hours/:id/edit"	edit
  # patch "/hours/:id"	update
  # put "/hours/:id"	update

end
