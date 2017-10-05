require 'test_helper'

class EspecialistsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @especialist = especialists(:one)
  end

  test "should get index" do
    get especialists_url
    assert_response :success
  end

  test "should get new" do
    get new_especialist_url
    assert_response :success
  end

  test "should create especialist" do
    assert_difference('Especialist.count') do
      post especialists_url, params: { especialist: { correo: @especialist.correo, direccion: @especialist.direccion, horario: @especialist.horario, nombre: @especialist.nombre, numero_contacto: @especialist.numero_contacto, rut: @especialist.rut } }
    end

    assert_redirected_to especialist_url(Especialist.last)
  end

  test "should show especialist" do
    get especialist_url(@especialist)
    assert_response :success
  end

  test "should get edit" do
    get edit_especialist_url(@especialist)
    assert_response :success
  end

  test "should update especialist" do
    patch especialist_url(@especialist), params: { especialist: { correo: @especialist.correo, direccion: @especialist.direccion, horario: @especialist.horario, nombre: @especialist.nombre, numero_contacto: @especialist.numero_contacto, rut: @especialist.rut } }
    assert_redirected_to especialist_url(@especialist)
  end

  test "should destroy especialist" do
    assert_difference('Especialist.count', -1) do
      delete especialist_url(@especialist)
    end

    assert_redirected_to especialists_url
  end
end
