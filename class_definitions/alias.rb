class MyClass
  def my_method; 'my_method()'; end
  alias :m :my_method
end

obj = MyClass.new
obj.my_method #=> "my_method()"
obj.m #=> "my_method()"

class MyClass
  alias_method :m2, :m
end

obj.m2 #=> "my_method()"
