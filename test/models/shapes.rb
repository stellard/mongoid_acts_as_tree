require "mongoid"
require "mongoid_acts_as_tree"

class Shape
  include Mongoid::Document
  include Mongoid::Acts::Tree
  
  field :name
  field :_type
  
  acts_as_tree :search_class => Shape
end

class Circle < Shape; end
class Square < Shape; end
