require 'test_helper'

class DiaHorarioSemanaMiercolesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dia_horario_semana_miercole = dia_horario_semana_miercoles(:one)
  end

  test "should get index" do
    get dia_horario_semana_miercoles_url
    assert_response :success
  end

  test "should get new" do
    get new_dia_horario_semana_miercole_url
    assert_response :success
  end

  test "should create dia_horario_semana_miercole" do
    assert_difference('DiaHorarioSemanaMiercole.count') do
      post dia_horario_semana_miercoles_url, params: { dia_horario_semana_miercole: { hora10: @dia_horario_semana_miercole.hora10, hora11: @dia_horario_semana_miercole.hora11, hora12: @dia_horario_semana_miercole.hora12, hora13: @dia_horario_semana_miercole.hora13, hora14: @dia_horario_semana_miercole.hora14, hora15: @dia_horario_semana_miercole.hora15, hora16: @dia_horario_semana_miercole.hora16, hora17: @dia_horario_semana_miercole.hora17, hora18: @dia_horario_semana_miercole.hora18, hora19: @dia_horario_semana_miercole.hora19, hora20: @dia_horario_semana_miercole.hora20, hora21: @dia_horario_semana_miercole.hora21, hora22: @dia_horario_semana_miercole.hora22, hora23: @dia_horario_semana_miercole.hora23, hora8: @dia_horario_semana_miercole.hora8, hora9: @dia_horario_semana_miercole.hora9 } }
    end

    assert_redirected_to dia_horario_semana_miercole_url(DiaHorarioSemanaMiercole.last)
  end

  test "should show dia_horario_semana_miercole" do
    get dia_horario_semana_miercole_url(@dia_horario_semana_miercole)
    assert_response :success
  end

  test "should get edit" do
    get edit_dia_horario_semana_miercole_url(@dia_horario_semana_miercole)
    assert_response :success
  end

  test "should update dia_horario_semana_miercole" do
    patch dia_horario_semana_miercole_url(@dia_horario_semana_miercole), params: { dia_horario_semana_miercole: { hora10: @dia_horario_semana_miercole.hora10, hora11: @dia_horario_semana_miercole.hora11, hora12: @dia_horario_semana_miercole.hora12, hora13: @dia_horario_semana_miercole.hora13, hora14: @dia_horario_semana_miercole.hora14, hora15: @dia_horario_semana_miercole.hora15, hora16: @dia_horario_semana_miercole.hora16, hora17: @dia_horario_semana_miercole.hora17, hora18: @dia_horario_semana_miercole.hora18, hora19: @dia_horario_semana_miercole.hora19, hora20: @dia_horario_semana_miercole.hora20, hora21: @dia_horario_semana_miercole.hora21, hora22: @dia_horario_semana_miercole.hora22, hora23: @dia_horario_semana_miercole.hora23, hora8: @dia_horario_semana_miercole.hora8, hora9: @dia_horario_semana_miercole.hora9 } }
    assert_redirected_to dia_horario_semana_miercole_url(@dia_horario_semana_miercole)
  end

  test "should destroy dia_horario_semana_miercole" do
    assert_difference('DiaHorarioSemanaMiercole.count', -1) do
      delete dia_horario_semana_miercole_url(@dia_horario_semana_miercole)
    end

    assert_redirected_to dia_horario_semana_miercoles_url
  end
end
