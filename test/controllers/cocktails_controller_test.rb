require 'test_helper'

class CocktailsControllerTest < ActionDispatch::IntegrationTest
  test "should get list" do
    get cocktails_list_url
    assert_response :success
  end

  test "should get show" do
    get cocktails_show_url
    assert_response :success
  end

  test "should get new" do
    get cocktails_new_url
    assert_response :success
  end

  test "should get update" do
    get cocktails_update_url
    assert_response :success
  end

  test "should get delete" do
    get cocktails_delete_url
    assert_response :success
  end

end
