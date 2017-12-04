require 'test_helper'

class DiaHorarioSemanaSabadosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dia_horario_semana_sabado = dia_horario_semana_sabados(:one)
  end

  test "should get index" do
    get dia_horario_semana_sabados_url
    assert_response :success
  end

  test "should get new" do
    get new_dia_horario_semana_sabado_url
    assert_response :success
  end

  test "should create dia_horario_semana_sabado" do
    assert_difference('DiaHorarioSemanaSabado.count') do
      post dia_horario_semana_sabados_url, params: { dia_horario_semana_sabado: { hora10: @dia_horario_semana_sabado.hora10, hora11: @dia_horario_semana_sabado.hora11, hora12: @dia_horario_semana_sabado.hora12, hora13: @dia_horario_semana_sabado.hora13, hora14: @dia_horario_semana_sabado.hora14, hora15: @dia_horario_semana_sabado.hora15, hora16: @dia_horario_semana_sabado.hora16, hora17: @dia_horario_semana_sabado.hora17, hora18: @dia_horario_semana_sabado.hora18, hora19: @dia_horario_semana_sabado.hora19, hora20: @dia_horario_semana_sabado.hora20, hora21: @dia_horario_semana_sabado.hora21, hora22: @dia_horario_semana_sabado.hora22, hora23: @dia_horario_semana_sabado.hora23, hora8: @dia_horario_semana_sabado.hora8, hora9: @dia_horario_semana_sabado.hora9 } }
    end

    assert_redirected_to dia_horario_semana_sabado_url(DiaHorarioSemanaSabado.last)
  end

  test "should show dia_horario_semana_sabado" do
    get dia_horario_semana_sabado_url(@dia_horario_semana_sabado)
    assert_response :success
  end

  test "should get edit" do
    get edit_dia_horario_semana_sabado_url(@dia_horario_semana_sabado)
    assert_response :success
  end

  test "should update dia_horario_semana_sabado" do
    patch dia_horario_semana_sabado_url(@dia_horario_semana_sabado), params: { dia_horario_semana_sabado: { hora10: @dia_horario_semana_sabado.hora10, hora11: @dia_horario_semana_sabado.hora11, hora12: @dia_horario_semana_sabado.hora12, hora13: @dia_horario_semana_sabado.hora13, hora14: @dia_horario_semana_sabado.hora14, hora15: @dia_horario_semana_sabado.hora15, hora16: @dia_horario_semana_sabado.hora16, hora17: @dia_horario_semana_sabado.hora17, hora18: @dia_horario_semana_sabado.hora18, hora19: @dia_horario_semana_sabado.hora19, hora20: @dia_horario_semana_sabado.hora20, hora21: @dia_horario_semana_sabado.hora21, hora22: @dia_horario_semana_sabado.hora22, hora23: @dia_horario_semana_sabado.hora23, hora8: @dia_horario_semana_sabado.hora8, hora9: @dia_horario_semana_sabado.hora9 } }
    assert_redirected_to dia_horario_semana_sabado_url(@dia_horario_semana_sabado)
  end

  test "should destroy dia_horario_semana_sabado" do
    assert_difference('DiaHorarioSemanaSabado.count', -1) do
      delete dia_horario_semana_sabado_url(@dia_horario_semana_sabado)
    end

    assert_redirected_to dia_horario_semana_sabados_url
  end
end
