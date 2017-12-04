require 'test_helper'

class DiaHorarioSemanaLunesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dia_horario_semana_lune = dia_horario_semana_lunes(:one)
  end

  test "should get index" do
    get dia_horario_semana_lunes_url
    assert_response :success
  end

  test "should get new" do
    get new_dia_horario_semana_lune_url
    assert_response :success
  end

  test "should create dia_horario_semana_lune" do
    assert_difference('DiaHorarioSemanaLune.count') do
      post dia_horario_semana_lunes_url, params: { dia_horario_semana_lune: { hora10: @dia_horario_semana_lune.hora10, hora11: @dia_horario_semana_lune.hora11, hora12: @dia_horario_semana_lune.hora12, hora13: @dia_horario_semana_lune.hora13, hora14: @dia_horario_semana_lune.hora14, hora15: @dia_horario_semana_lune.hora15, hora16: @dia_horario_semana_lune.hora16, hora17: @dia_horario_semana_lune.hora17, hora18: @dia_horario_semana_lune.hora18, hora19: @dia_horario_semana_lune.hora19, hora20: @dia_horario_semana_lune.hora20, hora21: @dia_horario_semana_lune.hora21, hora22: @dia_horario_semana_lune.hora22, hora23: @dia_horario_semana_lune.hora23, hora8: @dia_horario_semana_lune.hora8, hora9: @dia_horario_semana_lune.hora9 } }
    end

    assert_redirected_to dia_horario_semana_lune_url(DiaHorarioSemanaLune.last)
  end

  test "should show dia_horario_semana_lune" do
    get dia_horario_semana_lune_url(@dia_horario_semana_lune)
    assert_response :success
  end

  test "should get edit" do
    get edit_dia_horario_semana_lune_url(@dia_horario_semana_lune)
    assert_response :success
  end

  test "should update dia_horario_semana_lune" do
    patch dia_horario_semana_lune_url(@dia_horario_semana_lune), params: { dia_horario_semana_lune: { hora10: @dia_horario_semana_lune.hora10, hora11: @dia_horario_semana_lune.hora11, hora12: @dia_horario_semana_lune.hora12, hora13: @dia_horario_semana_lune.hora13, hora14: @dia_horario_semana_lune.hora14, hora15: @dia_horario_semana_lune.hora15, hora16: @dia_horario_semana_lune.hora16, hora17: @dia_horario_semana_lune.hora17, hora18: @dia_horario_semana_lune.hora18, hora19: @dia_horario_semana_lune.hora19, hora20: @dia_horario_semana_lune.hora20, hora21: @dia_horario_semana_lune.hora21, hora22: @dia_horario_semana_lune.hora22, hora23: @dia_horario_semana_lune.hora23, hora8: @dia_horario_semana_lune.hora8, hora9: @dia_horario_semana_lune.hora9 } }
    assert_redirected_to dia_horario_semana_lune_url(@dia_horario_semana_lune)
  end

  test "should destroy dia_horario_semana_lune" do
    assert_difference('DiaHorarioSemanaLune.count', -1) do
      delete dia_horario_semana_lune_url(@dia_horario_semana_lune)
    end

    assert_redirected_to dia_horario_semana_lunes_url
  end
end
