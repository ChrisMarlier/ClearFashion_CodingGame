require 'test_helper'

class FightControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get fight_index_url
    assert_response :success
  end

end
