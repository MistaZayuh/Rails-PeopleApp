require 'test_helper'

class PeopleControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get people_index_url
    assert_response :success
  end

  test "should get show" do
    get people_show_url
    assert_response :success
  end

  test "should get new" do
    get people_new_url
    assert_response :success
  end

  test "should get update" do
    get people_update_url
    assert_response :success
  end

  test "should get delete" do
    get people_delete_url
    assert_response :success
  end

end
