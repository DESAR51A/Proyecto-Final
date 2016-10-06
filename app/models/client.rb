# == Schema Information
#
# Table name: clients
#
#  id                     :integer          not null, primary key
#  name                   :string(255)
#  dni                    :integer
#  birth                  :date
#  phone                  :integer
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

class Client < ActiveRecord::Base
  
  has_many :reservations

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :name, presence: true, uniqueness: {case_sensitive: false}
  validates :dni, presence: true, uniqueness: {case_sensitive: false}
  validates :birth, presence: true
  validates :email, presence: true, uniqueness: {case_sensitive: false}
  
  

end
