Rails.application.routes.draw do
  get 'trumpet_scales/index'

  resources :trumpets
  #get 'sessions/new'
  get     'signup'  =>  'users#new'
  get     'login'   => 'sessions#new'
  post    'login'   => 'sessions#create'
  delete  'logout'  => 'sessions#destroy'

  resources :users

  get   '/piano' => 'homes#piano'
  resources :homes
  resources :piano_chords
  resources :piano_scales
  resources :piano_notes
  get 'notations/index'

  resources :notations

  resources :scales
  resources :sax_notes
  #root 'sax_notes#index'
  #root 'sax_notes#index'

  root 'homes#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
