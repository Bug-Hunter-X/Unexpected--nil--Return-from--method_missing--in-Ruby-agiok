```ruby
class MyClass
  def initialize(value)
    @value = value
  end

  def method_missing(method_name, *args, &block)
    puts "Method '#{method_name}' not found!\n"
    # This is the problematic part; it doesn't handle return values
  end

end

my_obj = MyClass.new(10)
result = my_obj.non_existent_method # No return value is explicitly defined
puts result # => nil, unexpected result if the method was intended to return something
```