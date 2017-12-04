require 'test_helper'

class DiaHorarioSemanaJuevesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dia_horario_semana_juefe = dia_horario_semana_jueves(:one)
  end

  test "should get index" do
    get dia_horario_semana_jueves_url
    assert_response :success
  end

  test "should get new" do
    get new_dia_horario_semana_juefe_url
    assert_response :success
  end

  test "should create dia_horario_semana_juefe" do
    assert_difference('DiaHorarioSemanaJuefe.count') do
      post dia_horario_semana_jueves_url, params: { dia_horario_semana_juefe: { hora10: @dia_horario_semana_juefe.hora10, hora11: @dia_horario_semana_juefe.hora11, hora12: @dia_horario_semana_juefe.hora12, hora13: @dia_horario_semana_juefe.hora13, hora14: @dia_horario_semana_juefe.hora14, hora15: @dia_horario_semana_juefe.hora15, hora16: @dia_horario_semana_juefe.hora16, hora17: @dia_horario_semana_juefe.hora17, hora18: @dia_horario_semana_juefe.hora18, hora19: @dia_horario_semana_juefe.hora19, hora20: @dia_horario_semana_juefe.hora20, hora21: @dia_horario_semana_juefe.hora21, hora22: @dia_horario_semana_juefe.hora22, hora23: @dia_horario_semana_juefe.hora23, hora8: @dia_horario_semana_juefe.hora8, hora9: @dia_horario_semana_juefe.hora9 } }
    end

    assert_redirected_to dia_horario_semana_juefe_url(DiaHorarioSemanaJuefe.last)
  end

  test "should show dia_horario_semana_juefe" do
    get dia_horario_semana_juefe_url(@dia_horario_semana_juefe)
    assert_response :success
  end

  test "should get edit" do
    get edit_dia_horario_semana_juefe_url(@dia_horario_semana_juefe)
    assert_response :success
  end

  test "should update dia_horario_semana_juefe" do
    patch dia_horario_semana_juefe_url(@dia_horario_semana_juefe), params: { dia_horario_semana_juefe: { hora10: @dia_horario_semana_juefe.hora10, hora11: @dia_horario_semana_juefe.hora11, hora12: @dia_horario_semana_juefe.hora12, hora13: @dia_horario_semana_juefe.hora13, hora14: @dia_horario_semana_juefe.hora14, hora15: @dia_horario_semana_juefe.hora15, hora16: @dia_horario_semana_juefe.hora16, hora17: @dia_horario_semana_juefe.hora17, hora18: @dia_horario_semana_juefe.hora18, hora19: @dia_horario_semana_juefe.hora19, hora20: @dia_horario_semana_juefe.hora20, hora21: @dia_horario_semana_juefe.hora21, hora22: @dia_horario_semana_juefe.hora22, hora23: @dia_horario_semana_juefe.hora23, hora8: @dia_horario_semana_juefe.hora8, hora9: @dia_horario_semana_juefe.hora9 } }
    assert_redirected_to dia_horario_semana_juefe_url(@dia_horario_semana_juefe)
  end

  test "should destroy dia_horario_semana_juefe" do
    assert_difference('DiaHorarioSemanaJuefe.count', -1) do
      delete dia_horario_semana_juefe_url(@dia_horario_semana_juefe)
    end

    assert_redirected_to dia_horario_semana_jueves_url
  end
end
