Given /^A product exists with name "([^"]*)" and price "([^"]*)"$/ do |name, price|
  Product.create!(:name => name, :price => price.to_i)
end

When /^I go to the products page$/ do
  visit products_path
end
