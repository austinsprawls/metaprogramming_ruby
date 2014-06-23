class MyClass
  def my_method; 'my-method()'; end
end

class MySubClass < MyClass
end

obj = MySubclass.new
obj.my_method()
