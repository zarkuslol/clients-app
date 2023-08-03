require "application_system_test_case"

class UsersTest < ApplicationSystemTestCase
  test "visiting the index" do
    visit users_url
    assert_selector "h1", text: "Gestão de Clientes"
  end

  test "creating a new user" do
    visit users_url

    click_on "Adicionar Cliente"

    fill_in id: "name",	with: "Josias"
    fill_in id: "email", with: "josias@gmail.com"
    fill_in id: "telephone", with: "(34) 99451-0062"
    fill_in id: "birth_date", with: "2000-01-03"

    click_on "Adicionar Cliente"

    assert_text "Josias"
  end

  test "updating an existing user" do
    visit users_url

    click_on 'Editar', match: :first

    fill_in id: "name",	with: "Amadeus"

    click_on "Adicionar Cliente"

    assert_text "Amadeus"
  end
end
