Rails.application.routes.draw do
  scope '/api' do
    scope '/v1' do 
      get 'pages/home', to: 'pages#home'
      get 'pages/restricted', to: 'pages#restricted'
      devise_for :users
    end
  end 
end 

