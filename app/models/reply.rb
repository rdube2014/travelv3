class Reply < ActiveRecord::Base



has_many :photo_responses

belongs_to :user

belongs_to :request

has_many :photos, :through => :photo_responses 

end
