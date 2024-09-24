class HelloWorld

  def initialize(my_name)
    @my_name = my_name
  end

  def hello(name= 'World')
    "Hello, #{name}. My name is #{@my_name}!"
  end
end

