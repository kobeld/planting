require 'test_helper'

class AnswersControllerTest < ActionController::TestCase
  test "should get linux_git" do
    get :linux_git
    assert_response :success
  end

end
