class Record < ApplicationRecord
    has_many :order_itemlists
    has_one_attached :image
 
end