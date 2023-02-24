Rails.application.routes.draw do
  get 'lists/index'
  root to: 'lists#index'

  resources :lists, only: %i[index new create show] do
    resources :bookmarks, only: %i[new create destroy]
  end
end
