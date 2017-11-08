require 'test_helper'

class TipoHorasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tipo_hora = tipo_horas(:one)
  end

  test "should get index" do
    get tipo_horas_url
    assert_response :success
  end

  test "should get new" do
    get new_tipo_hora_url
    assert_response :success
  end

  test "should create tipo_hora" do
    assert_difference('TipoHora.count') do
      post tipo_horas_url, params: { tipo_hora: { descripcion: @tipo_hora.descripcion, dueÇño_hora: @tipo_hora.dueÇño_hora } }
    end

    assert_redirected_to tipo_hora_url(TipoHora.last)
  end

  test "should show tipo_hora" do
    get tipo_hora_url(@tipo_hora)
    assert_response :success
  end

  test "should get edit" do
    get edit_tipo_hora_url(@tipo_hora)
    assert_response :success
  end

  test "should update tipo_hora" do
    patch tipo_hora_url(@tipo_hora), params: { tipo_hora: { descripcion: @tipo_hora.descripcion, dueÇño_hora: @tipo_hora.dueÇño_hora } }
    assert_redirected_to tipo_hora_url(@tipo_hora)
  end

  test "should destroy tipo_hora" do
    assert_difference('TipoHora.count', -1) do
      delete tipo_hora_url(@tipo_hora)
    end

    assert_redirected_to tipo_horas_url
  end
end
