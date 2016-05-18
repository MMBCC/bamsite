Rails.application.routes.draw do
  
  root :to => 'site#home'
  
  devise_for :admins 
  
  get "site/about"
  get "site/contact"
  get "site/portfolio"
  get "site/home"
  get "site/client"
  get "/site/gallery_newborns"
  get "site/gallery_maternity"
  get "site/gallery_children"
  
  get '/about' => 'site#about'
  get '/contact' => 'site#contact'
  get '/portfolio'=>'site#portfolio'
  get '/home' =>'site#home'
  #get '/client' => 'site#client'
  get '/gallery_children' =>'site#gallery_children'
  get '/gallery_maternity' =>'site#gallery_maternity'
  get '/gallery_newborns' =>'site#gallery_newborns'
  get '/home_slidgallery' => 'site#home_slidgallery'
  get '/client' => 'items#index'
  
  resources :photos
  
 

 get "users/mailer"
 get 'orderitems/index'
 get 'orderitems/show'
 get 'orderitems/new'
 get 'orderitems/edit'

 resources :orderitems
 # resources :cart

devise_for :users do
    resources :orders
end

 
 #get "/login" => "users/sessions#new"
 get "/register" => "users/registrations#new"
 #get "/users/sign_out" => "devise/sessions#destroy"

 resources :orders do
  resources :orderitems  
end
  
 get "cart/index"
resources :users
 resources :items
 
 get '/cart' => 'cart#index'
 get 'cart/clear' => 'cart#clearCart'
 
 get '/cart/:id' => 'cart#add'
 get "/cart/:id" => "create#Order"
 get '/cart/remove/:id' => 'cart#remove'
 
 get '/checkout' => 'cart#controller'
 get '/checkout' => 'cart#createOrder'
 get '/Admin' => 'user#admin_login'
 #get '/logout' => 'user#logout'
  
 
 

end


