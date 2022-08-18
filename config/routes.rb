Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :lists, only: %i[index new create show] do
    member  do
      resources :bookmarks, only: %i[new create]
    end
  end
  resources :bookmarks, only: :destroy
end
