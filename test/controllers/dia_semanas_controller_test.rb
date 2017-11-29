require 'test_helper'

class DiaSemanasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dia_semana = dia_semanas(:one)
  end

  test "should get index" do
    get dia_semanas_url
    assert_response :success
  end

  test "should get new" do
    get new_dia_semana_url
    assert_response :success
  end

  test "should create dia_semana" do
    assert_difference('DiaSemana.count') do
      post dia_semanas_url, params: { dia_semana: { hora10: @dia_semana.hora10, hora11: @dia_semana.hora11, hora12: @dia_semana.hora12, hora13: @dia_semana.hora13, hora14: @dia_semana.hora14, hora15: @dia_semana.hora15, hora16: @dia_semana.hora16, hora17: @dia_semana.hora17, hora18: @dia_semana.hora18, hora19: @dia_semana.hora19, hora20: @dia_semana.hora20, hora21: @dia_semana.hora21, hora22: @dia_semana.hora22, hora23: @dia_semana.hora23, hora8: @dia_semana.hora8, hora9: @dia_semana.hora9, nombre: @dia_semana.nombre } }
    end

    assert_redirected_to dia_semana_url(DiaSemana.last)
  end

  test "should show dia_semana" do
    get dia_semana_url(@dia_semana)
    assert_response :success
  end

  test "should get edit" do
    get edit_dia_semana_url(@dia_semana)
    assert_response :success
  end

  test "should update dia_semana" do
    patch dia_semana_url(@dia_semana), params: { dia_semana: { hora10: @dia_semana.hora10, hora11: @dia_semana.hora11, hora12: @dia_semana.hora12, hora13: @dia_semana.hora13, hora14: @dia_semana.hora14, hora15: @dia_semana.hora15, hora16: @dia_semana.hora16, hora17: @dia_semana.hora17, hora18: @dia_semana.hora18, hora19: @dia_semana.hora19, hora20: @dia_semana.hora20, hora21: @dia_semana.hora21, hora22: @dia_semana.hora22, hora23: @dia_semana.hora23, hora8: @dia_semana.hora8, hora9: @dia_semana.hora9, nombre: @dia_semana.nombre } }
    assert_redirected_to dia_semana_url(@dia_semana)
  end

  test "should destroy dia_semana" do
    assert_difference('DiaSemana.count', -1) do
      delete dia_semana_url(@dia_semana)
    end

    assert_redirected_to dia_semanas_url
  end
end
