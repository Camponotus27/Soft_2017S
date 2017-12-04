require 'test_helper'

class DiahorariosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @diahorario = diahorarios(:one)
  end

  test "should get index" do
    get diahorarios_url
    assert_response :success
  end

  test "should get new" do
    get new_diahorario_url
    assert_response :success
  end

  test "should create diahorario" do
    assert_difference('Diahorario.count') do
      post diahorarios_url, params: { diahorario: { dia: @diahorario.dia, dia_horario_semana_id: @diahorario.dia_horario_semana_id, horario_semana_id: @diahorario.horario_semana_id } }
    end

    assert_redirected_to diahorario_url(Diahorario.last)
  end

  test "should show diahorario" do
    get diahorario_url(@diahorario)
    assert_response :success
  end

  test "should get edit" do
    get edit_diahorario_url(@diahorario)
    assert_response :success
  end

  test "should update diahorario" do
    patch diahorario_url(@diahorario), params: { diahorario: { dia: @diahorario.dia, dia_horario_semana_id: @diahorario.dia_horario_semana_id, horario_semana_id: @diahorario.horario_semana_id } }
    assert_redirected_to diahorario_url(@diahorario)
  end

  test "should destroy diahorario" do
    assert_difference('Diahorario.count', -1) do
      delete diahorario_url(@diahorario)
    end

    assert_redirected_to diahorarios_url
  end
end
