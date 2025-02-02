```ruby
class MyClass
  def initialize(value)
    @value = value
  end

  def method_missing(method_name, *args, &block)
    puts "Method '#{method_name}' not found!\n"
    # Explicitly return a default value or handle the method appropriately
    return "Method not implemented" # or handle it more specifically based on the method
  end
end

my_obj = MyClass.new(10)
result = my_obj.non_existent_method
puts result # => "Method not implemented", more predictable
```