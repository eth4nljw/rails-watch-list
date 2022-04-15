Rails.application.routes.draw do
  resources :articles
  resources :lists do
    resources :bookmarks, only: [:create, :new]
  end

  resources :bookmarks, only: [:destroy]

  root to: 'articles#index'
  resources :articles, except: :index
# ⚠️ don't forget to replace `articles_path` by `root_path` on all the "Back" `link_to`
end
# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
#   root to: 'lists#index'
#   resources :lists, except: [:edit, :update] do
#     resources :bookmarks, only: [:new, :create]
#     resources :movies, only: :create
#   end
#   resources :bookmarks, only: :destroy
#   resources :movies, only: :destroy
# end
