# == Schema Information
#
# Table name: employees
#
#  id               :integer          not null, primary key
#  nom_emp          :string(255)
#  dni              :integer
#  phone            :integer
#  employee_role_id :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class Employee < ActiveRecord::Base
  belongs_to :employee_role
  has_many :shops
  
  def role_name
    self.employee_role.nom_rol
  end

  def to_s
   self.nom_emp
  end

end
