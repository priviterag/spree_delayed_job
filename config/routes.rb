Spree::Core::Engine.routes.draw do
  namespace :admin do
    resources :delayed_jobs, :only => [:index, :create]
  end
end
