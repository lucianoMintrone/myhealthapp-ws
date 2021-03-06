# == Schema Information
#
# Table name: users
#
#  id                           :bigint           not null, primary key
#  email                        :string(255)      default(""), not null
#  encrypted_password           :string(255)      default(""), not null
#  medical_plan_number          :integer
#  document_number              :integer
#  first_name                   :string(255)
#  last_name                    :string(255)
#  phone_number                 :string(255)
#  birth_date                   :date
#  medical_plan_expiration_date :date
#  is_enabled                   :boolean          default(TRUE), not null
#  created_at                   :datetime         not null
#  updated_at                   :datetime         not null
#

class User < ApplicationRecord
	devise :database_authenticatable, :registerable

	validates :email, 'valid_email_2/email': true
end
