# == Schema Information
#
# Table name: orders
#
#  id             :integer          not null, primary key
#  reservation_id :integer
#  product_id     :integer
#  cantidad       :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class Order < ActiveRecord::Base
  belongs_to :reservation
  belongs_to :product
  has_one :client, through: :reservation
  
  validates :reservation, presence: true
  validates :product, presence: true
  validates :cantidad, presence: true, numericality: { greater_than: 0}

  
end
