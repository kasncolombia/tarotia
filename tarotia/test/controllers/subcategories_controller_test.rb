require "test_helper"

class SubcategoriesControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get subcategories_show_url
    assert_response :success
  end
end
