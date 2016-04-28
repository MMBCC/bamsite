Rails.application.routes.draw do
  
devise_for :admins 
  get "site/about"
  get "site/contact"
  get "site/portfolio"
  get "site/home"
  get "site/login"
  get "site/register"
  get "site/client"
  get "/site/gallery_newborns"
  get "site/gallery_maternity"
  get "site/gallery_children"
  get "site/checkout"

  get '/about' => 'site#about'
  get '/contact' => 'site#contact'
  get '/portfolio'=>'site#portfolio'
  get '/home' =>'site#home'
  get '/client' => 'site#client'
  get '/gallery_children' =>'site#gallery_children'
  get '/gallery_maternity' =>'site#gallery_maternity'
  get '/gallery_newborns' =>'site#gallery_newborns'
  get '/homeslider' => 'site#homeslider'


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

 get "/login" => "devise/sessions#new"
 get "/register" => "devise/registrations#new"
 get "/users/sign_out" => "devise/sessions#destroy"

 resources :orders do
  resources :orderitems  
end
  
 get "cart/index"

 resources :items
 get '/cart' => 'cart#index'
 get '/cart/:id' => 'cart#add'
 get "/cart/:id" => "create#Order"
 get '/cart/remove/:id' => 'cart#remove'
 get '/clearCart' => 'cart#clearCart'
 get '/checkout' => 'cart#controller'
 get '/checkout' => 'cart#createOrder'
  
   
 get '/Admin' => 'user#admin_login'
  
 get '/logout' => 'user#logout'
  
 root :to => 'site#home'
 

end








 
  
  

   




