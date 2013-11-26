class User < ActiveRecord::Base

has_many :requests

def full_name                                                                                                                                                                                     
  ([first_name, last_name] - ['']).compact.join(' ')                         
end

end
