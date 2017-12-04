require 'test_helper'

class UsercomunasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @usercomuna = usercomunas(:one)
  end

  test "should get index" do
    get usercomunas_url
    assert_response :success
  end

  test "should get new" do
    get new_usercomuna_url
    assert_response :success
  end

  test "should create usercomuna" do
    assert_difference('Usercomuna.count') do
      post usercomunas_url, params: { usercomuna: { comuna_id: @usercomuna.comuna_id, user_id: @usercomuna.user_id } }
    end

    assert_redirected_to usercomuna_url(Usercomuna.last)
  end

  test "should show usercomuna" do
    get usercomuna_url(@usercomuna)
    assert_response :success
  end

  test "should get edit" do
    get edit_usercomuna_url(@usercomuna)
    assert_response :success
  end

  test "should update usercomuna" do
    patch usercomuna_url(@usercomuna), params: { usercomuna: { comuna_id: @usercomuna.comuna_id, user_id: @usercomuna.user_id } }
    assert_redirected_to usercomuna_url(@usercomuna)
  end

  test "should destroy usercomuna" do
    assert_difference('Usercomuna.count', -1) do
      delete usercomuna_url(@usercomuna)
    end

    assert_redirected_to usercomunas_url
  end
end
