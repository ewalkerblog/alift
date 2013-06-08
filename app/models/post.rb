class Post < ActiveRecord::Base
  attr_accessible :date, :from, :to, :seat, :price, :bagroom
  belongs_to :user
  validates :user_id, presence: true
  
  BAG_ROOM = [ "S" , "M", "L" ]
  NUMBER_OF_SEATS = [ "1" ,"2" ,"3" ,"4" ,"5" ,"6" ,"7" ,"8" ,"9" ,"10" ] 
  
  
end
