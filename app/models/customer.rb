class Customer < ActiveRecord::Base
	validates_presence_of :name,:surname,:email,:phone
	has_many :otels
end