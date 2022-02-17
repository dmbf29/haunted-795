require "test_helper"

class CursesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get curses_new_url
    assert_response :success
  end
end
