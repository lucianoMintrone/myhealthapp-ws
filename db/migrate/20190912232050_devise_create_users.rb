# frozen_string_literal: true

class DeviseCreateUsers < ActiveRecord::Migration[5.2]
	def change
		create_table :users do |t|
			## Database authenticatable
			t.string :email,              null: false, default: ""
			t.string :encrypted_password, null: false, default: ""

			t.integer :medical_plan_number
			t.integer :document_number
			t.string :first_name
			t.string :last_name
			t.string :phone_number
			t.date :birth_date
			t.date :medical_plan_expiration_date
			t.boolean :is_enabled, null: false, default: true 

			t.timestamps null: false
		end
	end
end
