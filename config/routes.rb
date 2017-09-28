Rails.application.routes.draw do

  devise_for :users, path: 'authors'
  root to: 'blog/posts#index'
  get 'about' => 'blog/authors#about'
  get 'portfolios' => 'blog/authors#portfolio'

  namespace :authors do
    get '/' => 'posts#index'
    get 'profile' => 'profiles#edit'
    put 'profile/info' => 'profiles#update'
    resources :portfolios
    resources :posts do
      put 'publish' => 'posts#publish', on: :member
      put 'unpublish' => 'posts#unpublish', on: :member
    end
  end

  scope module: 'blog' do
    get 'posts' => 'posts#index', as: :posts
    get 'posts/:id' => 'posts#show', as: :post
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
