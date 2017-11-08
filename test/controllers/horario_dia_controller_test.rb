require 'test_helper'

class HorarioDiaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @horario_dium = horario_dia(:one)
  end

  test "should get index" do
    get horario_dia_index_url
    assert_response :success
  end

  test "should get new" do
    get new_horario_dium_url
    assert_response :success
  end

  test "should create horario_dium" do
    assert_difference('HorarioDia.count') do
      post horario_dia_index_url, params: { horario_dium: { Hora10: @horario_dium.Hora10, Hora11: @horario_dium.Hora11, Hora12: @horario_dium.Hora12, Hora13: @horario_dium.Hora13, Hora14: @horario_dium.Hora14, Hora15: @horario_dium.Hora15, Hora16: @horario_dium.Hora16, Hora17: @horario_dium.Hora17, Hora18: @horario_dium.Hora18, Hora19: @horario_dium.Hora19, Hora1: @horario_dium.Hora1, Hora20: @horario_dium.Hora20, Hora21: @horario_dium.Hora21, Hora22: @horario_dium.Hora22, Hora23: @horario_dium.Hora23, Hora24: @horario_dium.Hora24, Hora2: @horario_dium.Hora2, Hora3: @horario_dium.Hora3, Hora4: @horario_dium.Hora4, Hora5: @horario_dium.Hora5, Hora6: @horario_dium.Hora6, Hora7: @horario_dium.Hora7, Hora7: @horario_dium.Hora7, Hora8: @horario_dium.Hora8, Hora9: @horario_dium.Hora9 } }
    end

    assert_redirected_to horario_dium_url(HorarioDia.last)
  end

  test "should show horario_dium" do
    get horario_dium_url(@horario_dium)
    assert_response :success
  end

  test "should get edit" do
    get edit_horario_dium_url(@horario_dium)
    assert_response :success
  end

  test "should update horario_dium" do
    patch horario_dium_url(@horario_dium), params: { horario_dium: { Hora10: @horario_dium.Hora10, Hora11: @horario_dium.Hora11, Hora12: @horario_dium.Hora12, Hora13: @horario_dium.Hora13, Hora14: @horario_dium.Hora14, Hora15: @horario_dium.Hora15, Hora16: @horario_dium.Hora16, Hora17: @horario_dium.Hora17, Hora18: @horario_dium.Hora18, Hora19: @horario_dium.Hora19, Hora1: @horario_dium.Hora1, Hora20: @horario_dium.Hora20, Hora21: @horario_dium.Hora21, Hora22: @horario_dium.Hora22, Hora23: @horario_dium.Hora23, Hora24: @horario_dium.Hora24, Hora2: @horario_dium.Hora2, Hora3: @horario_dium.Hora3, Hora4: @horario_dium.Hora4, Hora5: @horario_dium.Hora5, Hora6: @horario_dium.Hora6, Hora7: @horario_dium.Hora7, Hora7: @horario_dium.Hora7, Hora8: @horario_dium.Hora8, Hora9: @horario_dium.Hora9 } }
    assert_redirected_to horario_dium_url(@horario_dium)
  end

  test "should destroy horario_dium" do
    assert_difference('HorarioDia.count', -1) do
      delete horario_dium_url(@horario_dium)
    end

    assert_redirected_to horario_dia_index_url
  end
end
