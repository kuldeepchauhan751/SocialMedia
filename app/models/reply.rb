class Reply < ActiveRecord::Base
	belongs_to :comment
	has_many :likes , as: :likeable
	validates :rbody, presence: true,
				length: { minimum: 1 }
end
