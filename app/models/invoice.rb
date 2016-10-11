class Invoice < ActiveRecord::Base
  belongs_to :reservation
  
  has_many :invoice_items, dependent: :destroy
end
