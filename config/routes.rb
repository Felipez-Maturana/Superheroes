Rails.application.routes.draw do
  get 'pages/batman'
  get 'pages/superman'
  get 'pages/batmanvssuperman'
  root 'pages#batmanvssuperman'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
