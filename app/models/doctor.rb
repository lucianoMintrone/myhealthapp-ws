class Doctor < ApplicationRecord
	belongs_to :hospital

	acts_as_mappable :through => :hospital
end
