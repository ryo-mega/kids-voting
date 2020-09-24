Rails.application.routes.draw do
  get 'elections/index'
  get 'candidates/index'
  get 'ballots/create'
  get 'politicians/index'
  get 'politicians/show'
  get 'politicians/new'
  get 'politicians/create'
  get 'politicians/edit'
  get 'sessions/new'
  get 'sessions/create' 
  get 'sessions/destroy'
  root to: 'toppages#index'
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  get 'signup', to: 'users#new'
  resources :users
  resources :politicians, only: :index
  resources :elections do
    resources :candidates, only: :index
  end
  resources :candidates do
    resources :ballots do
      get 'thanks', to:  'ballots#thanks'
    end
  end
end

