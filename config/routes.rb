Babystore::Application.routes.draw do
  root :controller => :items, :action => :index
  devise_for :admins
  resources :items, :only => [:index]
  resources :categories, :only => [] do
    resources :items, :only => [:index, :show]
  end
  resources :orders, :only => [:new, :create]
  resource :about, :only => [:show]
  resource :cart, :only => [:create] do
    member do
      post :decrease
      post :clear
    end
  end
  namespace :admin do
    root :controller => :base, :action => :show
    resources :orders, :only => [:index, :show, :update]
    resources :base, :controller => :base, :only => [:update]
    resources :items, :only => [:new, :create, :edit, :update]
    resources :categories, :only => [:new, :create, :index, :edit, :update]
    resources :settings, :only => [:new, :create, :index, :edit, :update]
  end
end
