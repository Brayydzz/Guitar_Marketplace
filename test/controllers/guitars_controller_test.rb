require "test_helper"

class GuitarsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get guitars_index_url
    assert_response :success
  end

  test "should get new" do
    get guitars_new_url
    assert_response :success
  end

  test "should get show" do
    get guitars_show_url
    assert_response :success
  end
end
