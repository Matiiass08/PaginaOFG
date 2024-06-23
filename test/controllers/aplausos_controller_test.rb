require "test_helper"

class AplausosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @aplauso = aplausos(:one)
  end

  test "should get index" do
    get aplausos_url
    assert_response :success
  end

  test "should get new" do
    get new_aplauso_url
    assert_response :success
  end

  test "should create aplauso" do
    assert_difference("Aplauso.count") do
      post aplausos_url, params: { aplauso: { descripcion: @aplauso.descripcion, nombre: @aplauso.nombre } }
    end

    assert_redirected_to aplauso_url(Aplauso.last)
  end

  test "should show aplauso" do
    get aplauso_url(@aplauso)
    assert_response :success
  end

  test "should get edit" do
    get edit_aplauso_url(@aplauso)
    assert_response :success
  end

  test "should update aplauso" do
    patch aplauso_url(@aplauso), params: { aplauso: { descripcion: @aplauso.descripcion, nombre: @aplauso.nombre } }
    assert_redirected_to aplauso_url(@aplauso)
  end

  test "should destroy aplauso" do
    assert_difference("Aplauso.count", -1) do
      delete aplauso_url(@aplauso)
    end

    assert_redirected_to aplausos_url
  end
end
