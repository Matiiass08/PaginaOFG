require "test_helper"

class JuegosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @juego = juegos(:one)
  end

  test "should get index" do
    get juegos_url
    assert_response :success
  end

  test "should get new" do
    get new_juego_url
    assert_response :success
  end

  test "should create juego" do
    assert_difference("Juego.count") do
      post juegos_url, params: { juego: { descripcion: @juego.descripcion, nombre: @juego.nombre } }
    end

    assert_redirected_to juego_url(Juego.last)
  end

  test "should show juego" do
    get juego_url(@juego)
    assert_response :success
  end

  test "should get edit" do
    get edit_juego_url(@juego)
    assert_response :success
  end

  test "should update juego" do
    patch juego_url(@juego), params: { juego: { descripcion: @juego.descripcion, nombre: @juego.nombre } }
    assert_redirected_to juego_url(@juego)
  end

  test "should destroy juego" do
    assert_difference("Juego.count", -1) do
      delete juego_url(@juego)
    end

    assert_redirected_to juegos_url
  end
end
