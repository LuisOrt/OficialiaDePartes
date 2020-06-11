require 'test_helper'

class NoDeCorreosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @no_de_correo = no_de_correos(:one)
  end

  test "should get index" do
    get no_de_correos_url
    assert_response :success
  end

  test "should get new" do
    get new_no_de_correo_url
    assert_response :success
  end

  test "should create no_de_correo" do
    assert_difference('NoDeCorreo.count') do
      post no_de_correos_url, params: { no_de_correo: { Departamento: @no_de_correo.Departamento, No_de_Correo: @no_de_correo.No_de_Correo, Proposito: @no_de_correo.Proposito } }
    end

    assert_redirected_to no_de_correo_url(NoDeCorreo.last)
  end

  test "should show no_de_correo" do
    get no_de_correo_url(@no_de_correo)
    assert_response :success
  end

  test "should get edit" do
    get edit_no_de_correo_url(@no_de_correo)
    assert_response :success
  end

  test "should update no_de_correo" do
    patch no_de_correo_url(@no_de_correo), params: { no_de_correo: { Departamento: @no_de_correo.Departamento, No_de_Correo: @no_de_correo.No_de_Correo, Proposito: @no_de_correo.Proposito } }
    assert_redirected_to no_de_correo_url(@no_de_correo)
  end

  test "should destroy no_de_correo" do
    assert_difference('NoDeCorreo.count', -1) do
      delete no_de_correo_url(@no_de_correo)
    end

    assert_redirected_to no_de_correos_url
  end
end
