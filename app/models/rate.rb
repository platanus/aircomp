class Rate < ActiveRecord::Base
  belongs_to :trip
  attr_accessible :direction, :flight, :rate, :rate_desc, :rate_type
end
