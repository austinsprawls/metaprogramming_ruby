class MyClass
  attr_accessor :a
end

obj = MyClass.new
obj.a = 2
obj.a #=> 2

class MyClass
  class << self
    attr_accessor :c
  end
end

MyClass.c = 'It works!'
MyClass.c  #=> 'It works!'
