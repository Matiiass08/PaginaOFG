require "application_system_test_case"

class AplausosTest < ApplicationSystemTestCase
  setup do
    @aplauso = aplausos(:one)
  end

  test "visiting the index" do
    visit aplausos_url
    assert_selector "h1", text: "Aplausos"
  end

  test "should create aplauso" do
    visit aplausos_url
    click_on "New aplauso"

    fill_in "Descripcion", with: @aplauso.descripcion
    fill_in "Nombre", with: @aplauso.nombre
    click_on "Create Aplauso"

    assert_text "Aplauso was successfully created"
    click_on "Back"
  end

  test "should update Aplauso" do
    visit aplauso_url(@aplauso)
    click_on "Edit this aplauso", match: :first

    fill_in "Descripcion", with: @aplauso.descripcion
    fill_in "Nombre", with: @aplauso.nombre
    click_on "Update Aplauso"

    assert_text "Aplauso was successfully updated"
    click_on "Back"
  end

  test "should destroy Aplauso" do
    visit aplauso_url(@aplauso)
    click_on "Destroy this aplauso", match: :first

    assert_text "Aplauso was successfully destroyed"
  end
end
