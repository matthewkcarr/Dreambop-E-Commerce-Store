#ENV["RAILS_ENV"] = "test"
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'

class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.(yml|csv) for all tests in alphabetical order.
  #
  # Note: You'll currently still have to declare fixtures explicitly in integration tests
  # -- they do not yet inherit this setting
  fixtures :all

  def create_category=(options={})
    category = Category.new( {:name => 'a category'}.merge(options) )
  end

  def create_product(category, options={})
    product = Product.new({:title => "a new product", :manufacturer => 'manufacturer' }.merge(options))
    product.category = category
    product.save!
    return product
  end

  def create_product_image(options={})
    product_image = ProductImage.new(options)
    product_image.save!
    return product_image
  end

  def create_category(options={})
    category = Category.new({:name => 'a category'}.merge(options))
    category.save!
    return category
  end
  # Add more helper methods to be used by all tests here...
end
