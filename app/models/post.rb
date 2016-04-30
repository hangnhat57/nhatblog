class Post < ActiveRecord::Base
	validates :title , presence: true
	validates :body , presence: true
	validates :title , length: {minimum:5}
	validates :title , length: {maximum:255}
	validates :body	 , length: {minimum:5}
	validates :body , length: {maximum:5000}
	has_many :comments

end
