class Lamb < ActiveRecord::Base
  attr_accessible :is_silent

  after_create do
    self.is_silent = true
  end

end
