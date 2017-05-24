class Reply < ActiveRecord::Base
	belongs_to :comment
	has_many :likes , as: :likeable
end
