require 'test_helper'

class DiaHorarioSemanaDomingosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dia_horario_semana_domingo = dia_horario_semana_domingos(:one)
  end

  test "should get index" do
    get dia_horario_semana_domingos_url
    assert_response :success
  end

  test "should get new" do
    get new_dia_horario_semana_domingo_url
    assert_response :success
  end

  test "should create dia_horario_semana_domingo" do
    assert_difference('DiaHorarioSemanaDomingo.count') do
      post dia_horario_semana_domingos_url, params: { dia_horario_semana_domingo: { hora10: @dia_horario_semana_domingo.hora10, hora11: @dia_horario_semana_domingo.hora11, hora12: @dia_horario_semana_domingo.hora12, hora13: @dia_horario_semana_domingo.hora13, hora14: @dia_horario_semana_domingo.hora14, hora15: @dia_horario_semana_domingo.hora15, hora16: @dia_horario_semana_domingo.hora16, hora17: @dia_horario_semana_domingo.hora17, hora18: @dia_horario_semana_domingo.hora18, hora19: @dia_horario_semana_domingo.hora19, hora20: @dia_horario_semana_domingo.hora20, hora21: @dia_horario_semana_domingo.hora21, hora22: @dia_horario_semana_domingo.hora22, hora23: @dia_horario_semana_domingo.hora23, hora8: @dia_horario_semana_domingo.hora8, hora9: @dia_horario_semana_domingo.hora9 } }
    end

    assert_redirected_to dia_horario_semana_domingo_url(DiaHorarioSemanaDomingo.last)
  end

  test "should show dia_horario_semana_domingo" do
    get dia_horario_semana_domingo_url(@dia_horario_semana_domingo)
    assert_response :success
  end

  test "should get edit" do
    get edit_dia_horario_semana_domingo_url(@dia_horario_semana_domingo)
    assert_response :success
  end

  test "should update dia_horario_semana_domingo" do
    patch dia_horario_semana_domingo_url(@dia_horario_semana_domingo), params: { dia_horario_semana_domingo: { hora10: @dia_horario_semana_domingo.hora10, hora11: @dia_horario_semana_domingo.hora11, hora12: @dia_horario_semana_domingo.hora12, hora13: @dia_horario_semana_domingo.hora13, hora14: @dia_horario_semana_domingo.hora14, hora15: @dia_horario_semana_domingo.hora15, hora16: @dia_horario_semana_domingo.hora16, hora17: @dia_horario_semana_domingo.hora17, hora18: @dia_horario_semana_domingo.hora18, hora19: @dia_horario_semana_domingo.hora19, hora20: @dia_horario_semana_domingo.hora20, hora21: @dia_horario_semana_domingo.hora21, hora22: @dia_horario_semana_domingo.hora22, hora23: @dia_horario_semana_domingo.hora23, hora8: @dia_horario_semana_domingo.hora8, hora9: @dia_horario_semana_domingo.hora9 } }
    assert_redirected_to dia_horario_semana_domingo_url(@dia_horario_semana_domingo)
  end

  test "should destroy dia_horario_semana_domingo" do
    assert_difference('DiaHorarioSemanaDomingo.count', -1) do
      delete dia_horario_semana_domingo_url(@dia_horario_semana_domingo)
    end

    assert_redirected_to dia_horario_semana_domingos_url
  end
end
