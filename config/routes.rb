Rails.application.routes.draw do
  root 'test#index'
  get 'test', to: 'test#qwerty'
end
