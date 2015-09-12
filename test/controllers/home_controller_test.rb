require 'test_helper'

class HomeControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get main" do
    get :main
    assert_response :success
  end

  test "should get _bar" do
    get :_bar
    assert_response :success
  end

  test "should get review" do
    get :review
    assert_response :success
  end

end
