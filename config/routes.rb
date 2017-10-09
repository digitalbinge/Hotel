Rails.application.routes.draw do
  devise_for :admins
  authenticated :admin do
    root 'admin#index', as: :authenticated_root
    get 'admin/rooms', as: :authenticated_rooms
    post 'admin/submit'
  end
  root 'pages#home'

  get 'pages/about', to: 'pages#about', as: 'about'

  get 'pages/rooms', to: 'pages#rooms', as: 'rooms'

  get 'pages/contact', to: 'pages#contact', as: 'contact'

  post 'pages/submit'

  get 'pages/thankyou'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
