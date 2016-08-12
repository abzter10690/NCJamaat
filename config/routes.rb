Rails.application.routes.draw do
  root 'access#index'
  post 'access/attempt_login'
  match 'create-miqaat' , :to => 'admin#create_miqaat' , :via => :post
  match 'admin' , :to => 'access#admin' , :via => :get
  # match 'welcome/attempt_login' ,:to => 'welcome#index' , :via => :post
  #get 'welcome/index'
  #match 'welcome' ,:to => 'welcome#index' , :via => :get
  match ':controller(/:action(/:id(.:format)))' , :via => [:get , :post]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
