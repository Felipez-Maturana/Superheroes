Rails.application.routes.draw do
  get 'experiments/page1'

  get 'experiments/page2'

  get 'experiments/page3'

  get 'pages/batman'
  get 'pages/superman'
  get 'pages/batmanvssuperman'
  root 'pages#batmanvssuperman'
  post 'pages/votos_superman'
  post 'pages/votos_batman'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
