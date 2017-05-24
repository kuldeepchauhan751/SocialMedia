class Post < ActiveRecord::Base
	has_many :comments ,dependent: :destroy
	has_many :likes, as: :likeable
	validates :pbody, presence: true,
				length: { minimum: 1 }
                    
end
