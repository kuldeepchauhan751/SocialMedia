class Comment < ActiveRecord::Base
	belongs_to :post
	has_many :replies ,dependent: :destroy
	has_many :likes, as: :likeable
	validates :cbody, presence: true,
				length: { minimum: 1 }
end
