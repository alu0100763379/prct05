#require "example/gcd.rb"

class Fraccion
    attr_reader :num, :den
    
    def initialize(num, den)
        @num = num
        @den = den
       # gcd(@num,@den) #Simplificamos la fracción
    end
    
    def to_s
        "#{@num}/#{@den}"
    end
    
    def *(object)
        Fraccion.new(@num*object.num, @den*object.den)
    end
    
    def /(object)
        Fraccion.new(@num*object.den, @den*object.num)
    end
    
    def +(object)
        mcm = @den.lcm(object.den)
        num1 = (mcm * @num) / @den
        num2 = (mcm * object.num) / object.den
        Fraccion.new(num1+num2, mcm)
    end
end
