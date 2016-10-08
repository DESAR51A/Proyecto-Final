# == Schema Information
#
# Table name: employees
#
#  id                     :integer          not null, primary key
#  nom_emp                :string(255)
#  dni                    :integer
#  phone                  :integer
#  employee_role_id       :integer
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  email                  :string(255)      default(""), not null
#  encrypted_password     :string(255)      default(""), not null
#  reset_password_token   :string(255)
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :string(255)
#  last_sign_in_ip        :string(255)
#

class Employee < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  belongs_to :employee_role
  has_many :shops

  validates :nom_emp, presence: true
  validates :dni, presence: true, uniqueness: {case_sensitive: false}
  validates :employee_role, presence: true
  validates :email, presence: true, uniqueness: {case_sensitive: false}

  
  def role_name
    if self.employee_role.present?
        self.employee_role.nom_rol
    end
  end

  def to_s
   self.nom_emp
  end

end
