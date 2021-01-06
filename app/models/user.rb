class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :lockable, :timeoutable, :trackable and :omniauthable
  before_action :authenticate_user!
  
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable, :confirmable
  
  has_many :tickets
end