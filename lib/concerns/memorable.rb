require 'pry'


module Memorable
  module ClassMethods
    def count
      self.all.count
    end

    def reset_all
      self.all.clear
    end
  end

  module InstanceMethods
    def initialize
      #some code
      self.class.all << self # i.e., self.class = Song.class.all
      #shovel in object of Class, instance of class, self
    end
  end
end
