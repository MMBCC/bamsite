class User < ActiveRecord::Base
# Include default devise modules. Others available are:
# :token_authenticatable, :confirmable,
# :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :trackable, :validatable
    
    has_many :microposts
    has_many :orders
    has_many :items
    has_many :photos
    belongs_to :users

end