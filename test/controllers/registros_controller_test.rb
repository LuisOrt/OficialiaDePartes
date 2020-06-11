require 'test_helper'

class RegistrosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @registro = registros(:one)
  end

  test "should get index" do
    get registros_url
    assert_response :success
  end

  test "should get new" do
    get new_registro_url
    assert_response :success
  end

  test "should create registro" do
    assert_difference('Registro.count') do
      post registros_url, params: { registro: { Anexos: @registro.Anexos, Asunto: @registro.Asunto, Destinatario: @registro.Destinatario, Documento: @registro.Documento, Fecha_Limite: @registro.Fecha_Limite, Fecha_Recepcion: @registro.Fecha_Recepcion, Fecha_documento: @registro.Fecha_documento, Folio: @registro.Folio, Instruccion: @registro.Instruccion, No_Referencia: @registro.No_Referencia, Remitente: @registro.Remitente, Se_Turno_A: @registro.Se_Turno_A, Soporte: @registro.Soporte } }
    end

    assert_redirected_to registro_url(Registro.last)
  end

  test "should show registro" do
    get registro_url(@registro)
    assert_response :success
  end

  test "should get edit" do
    get edit_registro_url(@registro)
    assert_response :success
  end

  test "should update registro" do
    patch registro_url(@registro), params: { registro: { Anexos: @registro.Anexos, Asunto: @registro.Asunto, Destinatario: @registro.Destinatario, Documento: @registro.Documento, Fecha_Limite: @registro.Fecha_Limite, Fecha_Recepcion: @registro.Fecha_Recepcion, Fecha_documento: @registro.Fecha_documento, Folio: @registro.Folio, Instruccion: @registro.Instruccion, No_Referencia: @registro.No_Referencia, Remitente: @registro.Remitente, Se_Turno_A: @registro.Se_Turno_A, Soporte: @registro.Soporte } }
    assert_redirected_to registro_url(@registro)
  end

  test "should destroy registro" do
    assert_difference('Registro.count', -1) do
      delete registro_url(@registro)
    end

    assert_redirected_to registros_url
  end
end
