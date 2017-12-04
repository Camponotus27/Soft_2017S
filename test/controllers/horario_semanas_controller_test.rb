require 'test_helper'

class HorarioSemanasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @horario_semana = horario_semanas(:one)
  end

  test "should get index" do
    get horario_semanas_url
    assert_response :success
  end

  test "should get new" do
    get new_horario_semana_url
    assert_response :success
  end

  test "should create horario_semana" do
    assert_difference('HorarioSemana.count') do
      post horario_semanas_url, params: { horario_semana: { dia_horario_semana_domingo_id: @horario_semana.dia_horario_semana_domingo_id, dia_horario_semana_jueves_id: @horario_semana.dia_horario_semana_jueves_id, dia_horario_semana_lunes_id: @horario_semana.dia_horario_semana_lunes_id, dia_horario_semana_martes_id: @horario_semana.dia_horario_semana_martes_id, dia_horario_semana_miercoles_id: @horario_semana.dia_horario_semana_miercoles_id, dia_horario_semana_sabado_id: @horario_semana.dia_horario_semana_sabado_id, dia_horario_semana_viernes_id: @horario_semana.dia_horario_semana_viernes_id, fecha_ini: @horario_semana.fecha_ini, fecha_ter: @horario_semana.fecha_ter } }
    end

    assert_redirected_to horario_semana_url(HorarioSemana.last)
  end

  test "should show horario_semana" do
    get horario_semana_url(@horario_semana)
    assert_response :success
  end

  test "should get edit" do
    get edit_horario_semana_url(@horario_semana)
    assert_response :success
  end

  test "should update horario_semana" do
    patch horario_semana_url(@horario_semana), params: { horario_semana: { dia_horario_semana_domingo_id: @horario_semana.dia_horario_semana_domingo_id, dia_horario_semana_jueves_id: @horario_semana.dia_horario_semana_jueves_id, dia_horario_semana_lunes_id: @horario_semana.dia_horario_semana_lunes_id, dia_horario_semana_martes_id: @horario_semana.dia_horario_semana_martes_id, dia_horario_semana_miercoles_id: @horario_semana.dia_horario_semana_miercoles_id, dia_horario_semana_sabado_id: @horario_semana.dia_horario_semana_sabado_id, dia_horario_semana_viernes_id: @horario_semana.dia_horario_semana_viernes_id, fecha_ini: @horario_semana.fecha_ini, fecha_ter: @horario_semana.fecha_ter } }
    assert_redirected_to horario_semana_url(@horario_semana)
  end

  test "should destroy horario_semana" do
    assert_difference('HorarioSemana.count', -1) do
      delete horario_semana_url(@horario_semana)
    end

    assert_redirected_to horario_semanas_url
  end
end
