#apps/customer/customer_test.rb
#test driven development
require 'test/unit'
require_relative 'customer'

class CustomerTest < Test::Unit::TestCase
  def test_first_name

    customer = Customer.new('John', 'Smith', 50)
    @first_name
    assert_equal(customer.first_name, customer.first_name)
end
    def test_full_name
      customer = Customer.new('John', 'Smith', 50)
      assert_equal('John Smith', customer.full_name)
end

def test_last_name
  customer = Customer.new('John', 'Smith', 50)
  assert_equal('Smith', customer.last_name)
end

def test_age
  customer = Customer.new('John', 'Smith', 50)
  assert_equal(50 , customer.age)
end
end
