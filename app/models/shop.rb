# == Schema Information
#
# Table name: shops
#
#  id          :integer          not null, primary key
#  code        :string(255)
#  name        :string(255)
#  address     :string(255)
#  telephone   :string(255)
#  email       :string(255)
#  description :string(255)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  employee_id :integer
#

class Shop < ActiveRecord::Base
    belongs_to :employee
    has_many :rooms
    has_many :reservations
    validates :code, :name, :address, :telephone, :email, :employee_id, presence: true
    validates :code, uniqueness: true
    def admin_name
        if self.employee.present?
            self.employee.nom_emp
        end
    end
end
