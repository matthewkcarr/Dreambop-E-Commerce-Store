require 'test_helper'

class ProductDecoratorTest < ActiveSupport::TestCase
  def setup
    ApplicationController.new.view_context
  end
end
