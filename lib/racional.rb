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
end
