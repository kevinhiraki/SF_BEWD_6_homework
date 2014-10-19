class Post < ActiveRecord::Base
	validates: title, presence: true, length: {minimum: 5}
end



#What exactly is a model? 