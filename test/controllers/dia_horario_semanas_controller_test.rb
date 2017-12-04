require 'test_helper'

class DiaHorarioSemanasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dia_horario_semana = dia_horario_semanas(:one)
  end

  test "should get index" do
    get dia_horario_semanas_url
    assert_response :success
  end

  test "should get new" do
    get new_dia_horario_semana_url
    assert_response :success
  end

  test "should create dia_horario_semana" do
    assert_difference('DiaHorarioSemana.count') do
      post dia_horario_semanas_url, params: { dia_horario_semana: { fecha_dia: @dia_horario_semana.fecha_dia, hora10: @dia_horario_semana.hora10, hora11: @dia_horario_semana.hora11, hora12: @dia_horario_semana.hora12, hora13: @dia_horario_semana.hora13, hora14: @dia_horario_semana.hora14, hora15: @dia_horario_semana.hora15, hora16: @dia_horario_semana.hora16, hora17: @dia_horario_semana.hora17, hora18: @dia_horario_semana.hora18, hora19: @dia_horario_semana.hora19, hora20: @dia_horario_semana.hora20, hora21: @dia_horario_semana.hora21, hora22: @dia_horario_semana.hora22, hora23: @dia_horario_semana.hora23, hora8: @dia_horario_semana.hora8, hora9: @dia_horario_semana.hora9 } }
    end

    assert_redirected_to dia_horario_semana_url(DiaHorarioSemana.last)
  end

  test "should show dia_horario_semana" do
    get dia_horario_semana_url(@dia_horario_semana)
    assert_response :success
  end

  test "should get edit" do
    get edit_dia_horario_semana_url(@dia_horario_semana)
    assert_response :success
  end

  test "should update dia_horario_semana" do
    patch dia_horario_semana_url(@dia_horario_semana), params: { dia_horario_semana: { fecha_dia: @dia_horario_semana.fecha_dia, hora10: @dia_horario_semana.hora10, hora11: @dia_horario_semana.hora11, hora12: @dia_horario_semana.hora12, hora13: @dia_horario_semana.hora13, hora14: @dia_horario_semana.hora14, hora15: @dia_horario_semana.hora15, hora16: @dia_horario_semana.hora16, hora17: @dia_horario_semana.hora17, hora18: @dia_horario_semana.hora18, hora19: @dia_horario_semana.hora19, hora20: @dia_horario_semana.hora20, hora21: @dia_horario_semana.hora21, hora22: @dia_horario_semana.hora22, hora23: @dia_horario_semana.hora23, hora8: @dia_horario_semana.hora8, hora9: @dia_horario_semana.hora9 } }
    assert_redirected_to dia_horario_semana_url(@dia_horario_semana)
  end

  test "should destroy dia_horario_semana" do
    assert_difference('DiaHorarioSemana.count', -1) do
      delete dia_horario_semana_url(@dia_horario_semana)
    end

    assert_redirected_to dia_horario_semanas_url
  end
end
