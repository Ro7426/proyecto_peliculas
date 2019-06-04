Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

get 'movies', to:'movies#index'

get 'movies/new'

get 'movies/list', to: 'movies#list'


post 'movies', to:'movies#create'

get 'movies/:id', to:'movies#show', as: 'movie'

get 'movies/:id/edit', to: 'movies#edit', as: 'movie_edit'

patch 'movies/:id', to: 'movies#update'

delete 'movies/:id', to: 'movies#destroy'




end
