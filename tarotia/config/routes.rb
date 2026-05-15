Rails.application.routes.draw do
  root 'static_pages#home'
  
  get 'categorias', to: 'categories#index', as: :categories
  get 'categorias/:slug', to: 'categories#show', as: :category
  get 'categorias/:category_slug/:slug', to: 'subcategories#show', as: :subcategory

  get 'blog', to: 'blog#index', as: :blog
  get 'blog/:slug', to: 'blog#show', as: :blog_post

  get 'login', to: 'auth#login', as: :login
  post 'login', to: 'auth#create'
  get 'registro', to: 'auth#registro', as: :registro
  post 'registro', to: 'auth#create'
  get 'logout', to: 'auth#destroy', as: :logout
  get 'perfil', to: 'profiles#show', as: :perfil

  get 'biblioteca', to: 'dashboard#biblioteca', as: :biblioteca
  get 'historial', to: 'dashboard#historial', as: :historial
  get 'nueva-lectura', to: 'dashboard#nueva_lectura', as: :nueva_lectura
  get 'resultado-lectura', to: 'dashboard#resultado_lectura', as: :resultado_lectura
  get 'agenda', to: 'dashboard#agenda', as: :agenda

  get 'cartas/:slug', to: 'tarot_cards#show', as: :tarot_card

  # Health check
  get "up" => "rails/health#show", as: :rails_health_check
end
