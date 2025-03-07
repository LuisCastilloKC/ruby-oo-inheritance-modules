require_relative './class_methods_module.rb'
require_relative './dance_module.rb'
require_relative "./fancy_dance.rb"

class Dancer
    include Dance

    attr_accessor :name

    def initialize(name)
        @name = name
    end
end

class Dancer
    extend MetaDancing
end 

class Kid
    extend MetaDancing
  end 

  class Dancer
    extend FancyDance::ClassMethods
    include FancyDance::InstanceMethods
  end 