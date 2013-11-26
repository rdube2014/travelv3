class Photo < ActiveRecord::Base
	

	has_many :replies, :through => :photo_responses
end
