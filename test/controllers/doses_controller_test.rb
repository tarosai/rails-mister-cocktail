require 'test_helper'

class DosesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get doses_new_url
    assert_response :success
  end

  test "should get create" do
    get doses_create_url
    assert_response :success
  end

  test "should get delete" do
    get doses_delete_url
    assert_response :success
  end

end
