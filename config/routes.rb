Rails.application.routes.draw do

  resources :jobs
  resources :companies
  resources :resumes
  resources :articles

	devise_for :users, :controllers => { :registrations => 'registrations' }

  get 'pages/index'

  root 'pages#index'

  match '/contacts', to: 'contacts#new', via: 'get'
  resources "contacts", only: [:new, :create]

  get :send_job_mail, to: 'jobs#send_job_mail', as: :send_job_mail

end
