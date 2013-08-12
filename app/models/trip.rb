class Trip < ActiveRecord::Base
  attr_accessible :departing, :destination, :operator, :origin, :returning
end
