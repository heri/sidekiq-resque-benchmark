Myapp::Application.routes.draw do
  mount Sidekiq::Web => '/sidekiq'
  get "/" => "work#index"

end
