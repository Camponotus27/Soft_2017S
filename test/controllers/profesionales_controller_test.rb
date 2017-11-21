require 'test_helper'

class ProfesionalesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get profesionales_index_url
    assert_response :success
  end

end
