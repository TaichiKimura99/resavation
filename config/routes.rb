Rails.application.routes.draw do
  get 'acceptances/new'
  get 'acceptances/create'
  get 'top/index' 
  resources :rooms
  get 'reservation_web/index'
  root to: 'top#index'
  resources :entries,only: [:new,:create,:destroy,:index],path: :rentals

  #ログインアクション
  get 'login/login'
  #get 'login/logout' 
  #post 'login/',to: 'login#logout'
  get 'login/logout'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # get 'entries/index' , to: 'reservation_web#index'
  # get 'entries/create' , to: 'rooms#create'
  # get 'entries/destroy' , to: 'rooms#destroy'
  # get 'entries/new' , to: 'rooms#new'
  
end
