class CreateDoctors < ActiveRecord::Migration[5.2]
	def change
		create_table :hospitals do |t|
			t.string :name
			t.string :address
			t.timestamps
		end

		create_table :doctors do |t|
			t.string :phone_number
			t.string :name
			t.belongs_to :hospital
			t.string :specialty
			t.timestamps
		end

		add_column :hospitals, :latitude, :decimal, :precision => 13, :scale => 10 
		add_column :hospitals, :longitude, :decimal, :precision => 13, :scale => 10 
	end
end
