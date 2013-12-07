require 'test_helper'

class RootControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_redirected_to(controller: "books", action: "new")
  end

end
