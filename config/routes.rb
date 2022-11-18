Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      get 'merchants/index'
      post 'merchants/create'
      delete 'merchants/:id', to: 'merchants#destroy'
    end
  end

  root 'merchants#index'
end
