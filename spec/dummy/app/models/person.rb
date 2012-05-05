class Person < ActiveRecord::Base
  attr_accessible :birth, :name
  chronic_date :birth
end
