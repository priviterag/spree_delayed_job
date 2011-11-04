Rails.application.routes.draw do
  namespace :admin do
    resources :spree_delayed_jobs, :only => [:index, :create]
    #match 'spree_delayed_job' => 'spree_delayed_job#index', :as => 'spree_delayed_job'
  end
end
