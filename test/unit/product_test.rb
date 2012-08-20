require 'test_helper'

class ProductTest < ActiveSupport::TestCase

  test "can create product" do
    product = create_product(create_category)
    assert product, "product not created"
  end

  #test "product has a product image" do
    #image = create_product_image
    #product = create_product(create_category)
    #product.product_images << image
    #product.save!

    #assert product.product_image == image, "product image was not saved to product"
  #end

  test "product has a category" do
    category = create_category
    product = create_product(category)

    assert product.category == category, "product category does not match created category"
  end

end
