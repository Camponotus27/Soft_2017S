Rails.application.routes.draw do



  resources :horarios
  resources :assignments
  resources :tipo_horas
  resources :horario_dia
  resources :horario_mes
  resources :registros
  resources :servicios
  resources :comunas
  resources :profesions

  get 'cliente/index'


  get 'profesional/index'


  get 'administrador/indexprincipal'
  resources :administrador

  get 'cliente/indexprincipal'
  resources :cliente

  get 'profesional/indexprincipal'
  resources :profesional





  devise_for :users, :controllers => { registrations: 'registrations' }
  #get 'user/nuevoAdministrador'


  get 'ingresar/index'
  get 'historia/index'
  root 'principal#index'

  #para eliminar un servicio desde profesion
  delete 'assigment/edit/:id',to:'assignments#eliminarPro', as: 'eliminarServicio'

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
