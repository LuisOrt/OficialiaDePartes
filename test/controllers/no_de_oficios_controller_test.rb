require 'test_helper'

class NoDeOficiosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @no_de_oficio = no_de_oficios(:one)
  end

  test "should get index" do
    get no_de_oficios_url
    assert_response :success
  end

  test "should get new" do
    get new_no_de_oficio_url
    assert_response :success
  end

  test "should create no_de_oficio" do
    assert_difference('NoDeOficio.count') do
      post no_de_oficios_url, params: { no_de_oficio: { Departamento: @no_de_oficio.Departamento, Proposito: @no_de_oficio.Proposito } }
    end

    assert_redirected_to no_de_oficio_url(NoDeOficio.last)
  end

  test "should show no_de_oficio" do
    get no_de_oficio_url(@no_de_oficio)
    assert_response :success
  end

  test "should get edit" do
    get edit_no_de_oficio_url(@no_de_oficio)
    assert_response :success
  end

  test "should update no_de_oficio" do
    patch no_de_oficio_url(@no_de_oficio), params: { no_de_oficio: { Departamento: @no_de_oficio.Departamento, Proposito: @no_de_oficio.Proposito } }
    assert_redirected_to no_de_oficio_url(@no_de_oficio)
  end

  test "should destroy no_de_oficio" do
    assert_difference('NoDeOficio.count', -1) do
      delete no_de_oficio_url(@no_de_oficio)
    end

    assert_redirected_to no_de_oficios_url
  end
end
