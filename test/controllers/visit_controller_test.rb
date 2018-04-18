require 'test_helper'

class VisitControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get visit_index_url
    assert_response :success
  end

  test "should get show" do
    get visit_show_url
    assert_response :success
  end

  test "should get new" do
    get visit_new_url
    assert_response :success
  end

  test "should get edit" do
    get visit_edit_url
    assert_response :success
  end

end
