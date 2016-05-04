class CartController < ApplicationController
 before_action :authenticate_user!, except: [:index]
    
    def add
      puts "testing \n\n\n"
      id = params[:id]
      if session[:cart] then
      cart = session[:cart]
      else
      session[:cart] = {}
      cart = session[:cart]
      end
      if cart[id] then
        cart[id] = cart[id]+1
      else
        cart[id] = 1
      end
      redirect_to :action => :index
    end 
    
    def clearCart
     redirect_to :action => :index
    end
    
    def index
     if session[:cart] then
      @cart = session[:cart]
     else
      @cart = {}
     end
    end 
    
    def show
    end
    
    #redirect_to :action => :index
    
   def change
      cart = session[:cart]
      id = params[:id];
      quantity = params[:quantity].to_i   
     if cart and cart[id]
      unless quantity <= 0
       cart[id] = quantity
     end  
     else
       cart.delete id
         redirect_to :action => :index
     end   
   end
    
    def checkout
      flash[:notice] = "CHECKOUT IS NOT IMPLEMENTED YET!!!"
      redirect_to :action => :index
    end
    
    def remove
         id = params[:id]
         cart = session[:cart]
         cart.delete id
         
     redirect_to :action => :index
    end
    
    def clearCart
          session[:cart] = nil
     redirect_to :action => :index
    end


   def createOrder
      # Step 1: Get the current user
      @user = User.find(current_user.id)
      
      # Step 2: Create a new order and associate it with the current user
      @order = @user.orders.build(:order_date => DateTime.now)
      @order.save

      # Step 3: For each item in the cart, create a new item on the order!!
      @cart = session[:cart] || {} # Get the content of the Cart
      @cart.each do | id, quantity |
       item = Item.find_by_id(id)
       @orderitem = @order.orderitems.build(:item_id => item.id, :title =>
       item.title, :description => item.description, :quantity => quantity, :price  => item.price)
       @orderitem.save
    end
   end 
end         
