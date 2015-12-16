class Post 
	include MongoMapper::Document

	key :name, String, :required => true
	key :type, String, :required => true
	key :length, Integer, :numeric => true
	key :width, Integer, :numeric => true
	key :height, Integer, :numeric => true
	key :weight, Integer, :numeric => true

 # attr_accessible :name, :type, :length, :width, :height, :weight
end
