Rails.application.routes.draw do

  get 'horarios/historico'


  resources :horarios
  resources :userprofesions
  resources :usercomunas
  resources :diahorarios
  resources :horario_semanas
  resources :dia_horario_semana_domingos
  resources :dia_horario_semana_sabados
  resources :dia_horario_semana_viernes
  resources :dia_horario_semana_jueves
  resources :dia_horario_semana_miercoles
  resources :dia_horario_semana_martes
  resources :dia_horario_semana_lunes
  resources :dia_horario_semanas
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





  devise_for :users, :controllers => {registrations: 'registrations'}

  put 'registroprofesionales/update/:id', to: 'registroprofesionales#update' , as: 'updateRegistroprofesionales'

  #get 'user/nuevoAdministrador'

  #get 'user/editdatos',to:'registrations#edit'


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
