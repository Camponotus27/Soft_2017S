require 'test_helper'

class DiaHorarioSemanaViernesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dia_horario_semana_vierne = dia_horario_semana_viernes(:one)
  end

  test "should get index" do
    get dia_horario_semana_viernes_url
    assert_response :success
  end

  test "should get new" do
    get new_dia_horario_semana_vierne_url
    assert_response :success
  end

  test "should create dia_horario_semana_vierne" do
    assert_difference('DiaHorarioSemanaVierne.count') do
      post dia_horario_semana_viernes_url, params: { dia_horario_semana_vierne: { hora10: @dia_horario_semana_vierne.hora10, hora11: @dia_horario_semana_vierne.hora11, hora12: @dia_horario_semana_vierne.hora12, hora13: @dia_horario_semana_vierne.hora13, hora14: @dia_horario_semana_vierne.hora14, hora15: @dia_horario_semana_vierne.hora15, hora16: @dia_horario_semana_vierne.hora16, hora17: @dia_horario_semana_vierne.hora17, hora18: @dia_horario_semana_vierne.hora18, hora19: @dia_horario_semana_vierne.hora19, hora20: @dia_horario_semana_vierne.hora20, hora21: @dia_horario_semana_vierne.hora21, hora22: @dia_horario_semana_vierne.hora22, hora23: @dia_horario_semana_vierne.hora23, hora8: @dia_horario_semana_vierne.hora8, hora9: @dia_horario_semana_vierne.hora9 } }
    end

    assert_redirected_to dia_horario_semana_vierne_url(DiaHorarioSemanaVierne.last)
  end

  test "should show dia_horario_semana_vierne" do
    get dia_horario_semana_vierne_url(@dia_horario_semana_vierne)
    assert_response :success
  end

  test "should get edit" do
    get edit_dia_horario_semana_vierne_url(@dia_horario_semana_vierne)
    assert_response :success
  end

  test "should update dia_horario_semana_vierne" do
    patch dia_horario_semana_vierne_url(@dia_horario_semana_vierne), params: { dia_horario_semana_vierne: { hora10: @dia_horario_semana_vierne.hora10, hora11: @dia_horario_semana_vierne.hora11, hora12: @dia_horario_semana_vierne.hora12, hora13: @dia_horario_semana_vierne.hora13, hora14: @dia_horario_semana_vierne.hora14, hora15: @dia_horario_semana_vierne.hora15, hora16: @dia_horario_semana_vierne.hora16, hora17: @dia_horario_semana_vierne.hora17, hora18: @dia_horario_semana_vierne.hora18, hora19: @dia_horario_semana_vierne.hora19, hora20: @dia_horario_semana_vierne.hora20, hora21: @dia_horario_semana_vierne.hora21, hora22: @dia_horario_semana_vierne.hora22, hora23: @dia_horario_semana_vierne.hora23, hora8: @dia_horario_semana_vierne.hora8, hora9: @dia_horario_semana_vierne.hora9 } }
    assert_redirected_to dia_horario_semana_vierne_url(@dia_horario_semana_vierne)
  end

  test "should destroy dia_horario_semana_vierne" do
    assert_difference('DiaHorarioSemanaVierne.count', -1) do
      delete dia_horario_semana_vierne_url(@dia_horario_semana_vierne)
    end

    assert_redirected_to dia_horario_semana_viernes_url
  end
end
