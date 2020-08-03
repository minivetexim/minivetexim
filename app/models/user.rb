class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :profiles
  has_many :products
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

validates_presence_of :name,message: "can't be blank"
validates_presence_of :country,message: "Name can't be blank"
validates_presence_of :business_type,message: "can't be blank"
    
validates_presence_of :mobile_number,message: "can't be blank"

       
end

