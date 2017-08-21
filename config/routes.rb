Rails.application.routes.draw do
  resources :piano_chords
  resources :piano_scales
  resources :piano_notes
  #get 'notations/index'

  resources :notations

  resources :scales
  resources :sax_notes
  #root 'sax_notes#index'
  #root 'sax_notes#index'

  root 'notations#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
