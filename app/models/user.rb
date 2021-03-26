class User < ApplicationRecord
 
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

         has_many :friends

  has_one_attached :avatar
 
end
