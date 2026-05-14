Rails.application.routes.draw do
  root 'static_pages#home'
  
  get 'categorias', to: 'categories#index', as: :categories
  get 'categorias/:slug', to: 'categories#show', as: :category
  get 'categorias/:category_slug/:slug', to: 'subcategories#show', as: :subcategory

  get 'blog', to: 'blog#index', as: :blog
  get 'blog/:slug', to: 'blog#show', as: :blog_post

  get 'login', to: 'auth#login', as: :login
  get 'registro', to: 'auth#registro', as: :registro
  get 'perfil', to: 'profiles#show', as: :perfil

  # Health check
  get "up" => "rails/health#show", as: :rails_health_check
end
