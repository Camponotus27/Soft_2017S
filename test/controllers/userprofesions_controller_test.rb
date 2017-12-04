require 'test_helper'

class UserprofesionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @userprofesion = userprofesions(:one)
  end

  test "should get index" do
    get userprofesions_url
    assert_response :success
  end

  test "should get new" do
    get new_userprofesion_url
    assert_response :success
  end

  test "should create userprofesion" do
    assert_difference('Userprofesion.count') do
      post userprofesions_url, params: { userprofesion: { profesion_id: @userprofesion.profesion_id, user_id: @userprofesion.user_id } }
    end

    assert_redirected_to userprofesion_url(Userprofesion.last)
  end

  test "should show userprofesion" do
    get userprofesion_url(@userprofesion)
    assert_response :success
  end

  test "should get edit" do
    get edit_userprofesion_url(@userprofesion)
    assert_response :success
  end

  test "should update userprofesion" do
    patch userprofesion_url(@userprofesion), params: { userprofesion: { profesion_id: @userprofesion.profesion_id, user_id: @userprofesion.user_id } }
    assert_redirected_to userprofesion_url(@userprofesion)
  end

  test "should destroy userprofesion" do
    assert_difference('Userprofesion.count', -1) do
      delete userprofesion_url(@userprofesion)
    end

    assert_redirected_to userprofesions_url
  end
end
