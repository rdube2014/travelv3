class Request < ActiveRecord::Base

has_many :replies

belongs_to :user

validates :request_text, :presence => true
validates :travel_to_city, :presence => true

end
