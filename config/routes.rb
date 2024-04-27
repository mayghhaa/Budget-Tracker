Rails.application.routes.draw do

  root "dashboard#index"
  resources :incomes
  resources :expenses
  resources :balances
  resources :categories
end
