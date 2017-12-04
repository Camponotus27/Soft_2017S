require 'test_helper'

class DiaHorarioSemanaMartesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dia_horario_semana_marte = dia_horario_semana_martes(:one)
  end

  test "should get index" do
    get dia_horario_semana_martes_url
    assert_response :success
  end

  test "should get new" do
    get new_dia_horario_semana_marte_url
    assert_response :success
  end

  test "should create dia_horario_semana_marte" do
    assert_difference('DiaHorarioSemanaMarte.count') do
      post dia_horario_semana_martes_url, params: { dia_horario_semana_marte: { hora10: @dia_horario_semana_marte.hora10, hora11: @dia_horario_semana_marte.hora11, hora12: @dia_horario_semana_marte.hora12, hora13: @dia_horario_semana_marte.hora13, hora14: @dia_horario_semana_marte.hora14, hora15: @dia_horario_semana_marte.hora15, hora16: @dia_horario_semana_marte.hora16, hora17: @dia_horario_semana_marte.hora17, hora18: @dia_horario_semana_marte.hora18, hora19: @dia_horario_semana_marte.hora19, hora20: @dia_horario_semana_marte.hora20, hora21: @dia_horario_semana_marte.hora21, hora22: @dia_horario_semana_marte.hora22, hora23: @dia_horario_semana_marte.hora23, hora8: @dia_horario_semana_marte.hora8, hora9: @dia_horario_semana_marte.hora9 } }
    end

    assert_redirected_to dia_horario_semana_marte_url(DiaHorarioSemanaMarte.last)
  end

  test "should show dia_horario_semana_marte" do
    get dia_horario_semana_marte_url(@dia_horario_semana_marte)
    assert_response :success
  end

  test "should get edit" do
    get edit_dia_horario_semana_marte_url(@dia_horario_semana_marte)
    assert_response :success
  end

  test "should update dia_horario_semana_marte" do
    patch dia_horario_semana_marte_url(@dia_horario_semana_marte), params: { dia_horario_semana_marte: { hora10: @dia_horario_semana_marte.hora10, hora11: @dia_horario_semana_marte.hora11, hora12: @dia_horario_semana_marte.hora12, hora13: @dia_horario_semana_marte.hora13, hora14: @dia_horario_semana_marte.hora14, hora15: @dia_horario_semana_marte.hora15, hora16: @dia_horario_semana_marte.hora16, hora17: @dia_horario_semana_marte.hora17, hora18: @dia_horario_semana_marte.hora18, hora19: @dia_horario_semana_marte.hora19, hora20: @dia_horario_semana_marte.hora20, hora21: @dia_horario_semana_marte.hora21, hora22: @dia_horario_semana_marte.hora22, hora23: @dia_horario_semana_marte.hora23, hora8: @dia_horario_semana_marte.hora8, hora9: @dia_horario_semana_marte.hora9 } }
    assert_redirected_to dia_horario_semana_marte_url(@dia_horario_semana_marte)
  end

  test "should destroy dia_horario_semana_marte" do
    assert_difference('DiaHorarioSemanaMarte.count', -1) do
      delete dia_horario_semana_marte_url(@dia_horario_semana_marte)
    end

    assert_redirected_to dia_horario_semana_martes_url
  end
end
