# == Schema Information
#
# Table name: employee_roles
#
#  id         :integer          not null, primary key
#  nom_rol    :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class EmployeeRole < ActiveRecord::Base
    has_many :employees
    validates :nom_rol, presence: true
    def to_s
     self.nom_rol
    end

end
