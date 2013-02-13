class Athlete < ActiveRecord::Base
  attr_accessible :age, :email, :fname, :lname, :pic_url
end
