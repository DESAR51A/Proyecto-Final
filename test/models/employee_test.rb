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

require 'test_helper'

class EmployeeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
