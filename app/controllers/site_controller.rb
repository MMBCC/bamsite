class SiteController < ApplicationController
  before_filter :authenticate_user!
  before_action :set_item, only: [:show, :edit, :update, :destroy]
  def about
  end

  def contact
  end
  
  def home
  end
  
  def register
  end
  
  def login
  end
  
  def portfolio
  end
  
  def gallery_newborns
  end
  
  def gallery_children
  end
  
  def gallery_maternity
  end
  
  def client
  end
  
  def checkout
  end
end
