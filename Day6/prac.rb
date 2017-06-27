  require 'test/unit'
  require_relative 'prac2'

  class Pie < Test::Unit::TestCase
    def applepie

      bake = Eat.new('Choco', 'Blueberry')
      assert_equal('Choco', 'Blueberry' )
end
end
