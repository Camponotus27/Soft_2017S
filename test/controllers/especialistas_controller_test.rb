require 'test_helper'

class EspecialistasControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get especialistas_index_url
    assert_response :success
  end

end
