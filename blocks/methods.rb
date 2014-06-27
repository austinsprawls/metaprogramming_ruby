class MyClass
  def initialize(value)
    @x = value
  end

  def my_method
    @x
  end

end

object = MyClass.new(1)
m = object.method :my_method
m.call #=> 1

unbound = m.unbind
another_object = MyClass.new(2)
m = unbound.bind(another_object)
m.call  #=> 2
