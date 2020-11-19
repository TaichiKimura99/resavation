require 'test_helper'

class ReservationWebControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get reservation_web_index_url
    assert_response :success
  end

end
