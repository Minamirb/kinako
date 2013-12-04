require 'test_helper'

class BooksControllerTest < ActionController::TestCase
  test "should get new" do
    get :new
    assert_response :success
  end

  test "should get create" do
    post :create, target_url: "http://law.e-gov.go.jp/htmldata/S28/S28HO006.html"
    assert_response :success
  end

end
