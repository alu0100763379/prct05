require "lib/racional.rb"
require "test/unit"

class Test_Fraccion < Test::Unit::TestCase
    
    def setup
        @fraccion1 = Fraccion.new(7,2)
        @fraccion2 = Fraccion.new(3,6)
    end
    
    def test_simple
        assert_equal("21/12", (@fraccion1 * @fraccion2).to_s)
        assert_equal("42/6", (@fraccion1 / @fraccion2).to_s)
        assert_equal("24/6", (@fraccion1 + @fraccion2).to_s)
        assert_equal("18/6", (@fraccion1 - @fraccion2).to_s)
    end
end
