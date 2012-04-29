TestRocketTagSolrForeman::Application.routes.draw do

  get "products/index"

  get "products/new"

  get "products/edit"

  resources :products

  root :to => "products#index"
end
