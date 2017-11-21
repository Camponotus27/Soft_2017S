require 'test_helper'

class ProfesionalControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get profesional_index_url
    assert_response :success
  end

end
