require 'test_helper'

class HistoriaControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get historia_index_url
    assert_response :success
  end

end
