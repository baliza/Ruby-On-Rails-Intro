class MathFunctions 
  def self.double(var) # 1. Using self 
    times_called; var * 2; 
  end 
  class << self # 2. Using << self 
    def times_called 
      @@times_called ||= 0; @@times_called += 1 
    end 
    def hola_mundo 
      @@hola_mundo ||= "hola_mundo"; 
    end 
  end 
end 
def MathFunctions.triple(var) # 3. Outside of class 
  times_called; var * 3 
end

def MathFunctions.saluda(var) # 3. Outside of class 
  times_called; hola_mundo =  var || "hola_mundo"
end


# No instance created! 
puts MathFunctions.double 5 # => 10 
puts MathFunctions.triple(3) # => 9 
puts MathFunctions.times_called # => 3 
puts MathFunctions.hola_mundo # => 3 
puts MathFunctions.saluda 'hola_dublin' # => 3 
puts MathFunctions.saluda(nil) # => 3 
