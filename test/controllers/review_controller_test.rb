require 'test_helper'

class ReviewControllerTest < ActionController::TestCase
  test "should get read" do
    get :read
    assert_response :success
  end

  test "should get modify" do
    get :modify
    assert_response :success
  end

  test "should get delete" do
    get :delete
    assert_response :success
  end

end
