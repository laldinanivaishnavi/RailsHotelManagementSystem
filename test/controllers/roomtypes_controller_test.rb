require 'test_helper'

class RoomtypesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get roomtypes_index_url
    assert_response :success
  end

end
