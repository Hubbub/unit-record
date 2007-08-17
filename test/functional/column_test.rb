require File.dirname(__FILE__) + "/functional_test_helper"

functional_tests do
  test "instantiating" do
    person = Person.new :first_name => "Dan", :last_name => "Manges"
    assert_equal "Dan", person.first_name
    assert_equal "Manges", person.last_name
  end
  
  test "using model with column with a default" do
    record = Preference.new
    assert_equal true, record.show_help?
  end
  
  test "typecasting happens for integer attributes" do
    record = Preference.new
    record.some_count = "42"
    assert_equal 42, record.some_count
  end
  
  test "" do
  end
end
