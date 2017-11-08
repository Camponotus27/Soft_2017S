require 'test_helper'

class HorarioMesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @horario_me = horario_mes(:one)
  end

  test "should get index" do
    get horario_mes_index_url
    assert_response :success
  end

  test "should get new" do
    get new_horario_me_url
    assert_response :success
  end

  test "should create horario_me" do
    assert_difference('HorarioMes.count') do
      post horario_mes_index_url, params: { horario_me: { descripcion: @horario_me.descripcion, horario: @horario_me.horario } }
    end

    assert_redirected_to horario_me_url(HorarioMes.last)
  end

  test "should show horario_me" do
    get horario_me_url(@horario_me)
    assert_response :success
  end

  test "should get edit" do
    get edit_horario_me_url(@horario_me)
    assert_response :success
  end

  test "should update horario_me" do
    patch horario_me_url(@horario_me), params: { horario_me: { descripcion: @horario_me.descripcion, horario: @horario_me.horario } }
    assert_redirected_to horario_me_url(@horario_me)
  end

  test "should destroy horario_me" do
    assert_difference('HorarioMes.count', -1) do
      delete horario_me_url(@horario_me)
    end

    assert_redirected_to horario_mes_index_url
  end
end
