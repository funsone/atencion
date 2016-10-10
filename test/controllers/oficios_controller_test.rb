require 'test_helper'

class OficiosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @oficio = oficios(:one)
  end

  test "should get index" do
    get oficios_url
    assert_response :success
  end

  test "should get new" do
    get new_oficio_url
    assert_response :success
  end

  test "should create oficio" do
    assert_difference('Oficio.count') do
      post oficios_url, params: { oficio: { descripcion: @oficio.descripcion, fecha_de_emision: @oficio.fecha_de_emision, institucion: @oficio.institucion } }
    end

    assert_redirected_to oficio_url(Oficio.last)
  end

  test "should show oficio" do
    get oficio_url(@oficio)
    assert_response :success
  end

  test "should get edit" do
    get edit_oficio_url(@oficio)
    assert_response :success
  end

  test "should update oficio" do
    patch oficio_url(@oficio), params: { oficio: { descripcion: @oficio.descripcion, fecha_de_emision: @oficio.fecha_de_emision, institucion: @oficio.institucion } }
    assert_redirected_to oficio_url(@oficio)
  end

  test "should destroy oficio" do
    assert_difference('Oficio.count', -1) do
      delete oficio_url(@oficio)
    end

    assert_redirected_to oficios_url
  end
end
