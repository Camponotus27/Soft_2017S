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
      post horario_semanas_url, params: { horario_semana: { domingo_id_id: @horario_semana.domingo_id_id, fecha_inicio: @horario_semana.fecha_inicio, fecha_termino: @horario_semana.fecha_termino, jueves_id_id: @horario_semana.jueves_id_id, lunes_id_id: @horario_semana.lunes_id_id, martes_id_id: @horario_semana.martes_id_id, miercoles_id_id: @horario_semana.miercoles_id_id, nombre: @horario_semana.nombre, sabado_id_id: @horario_semana.sabado_id_id, viernes_id_id: @horario_semana.viernes_id_id } }
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
    patch horario_semana_url(@horario_semana), params: { horario_semana: { domingo_id_id: @horario_semana.domingo_id_id, fecha_inicio: @horario_semana.fecha_inicio, fecha_termino: @horario_semana.fecha_termino, jueves_id_id: @horario_semana.jueves_id_id, lunes_id_id: @horario_semana.lunes_id_id, martes_id_id: @horario_semana.martes_id_id, miercoles_id_id: @horario_semana.miercoles_id_id, nombre: @horario_semana.nombre, sabado_id_id: @horario_semana.sabado_id_id, viernes_id_id: @horario_semana.viernes_id_id } }
    assert_redirected_to horario_semana_url(@horario_semana)
  end

  test "should destroy horario_semana" do
    assert_difference('HorarioSemana.count', -1) do
      delete horario_semana_url(@horario_semana)
    end

    assert_redirected_to horario_semanas_url
  end
end
