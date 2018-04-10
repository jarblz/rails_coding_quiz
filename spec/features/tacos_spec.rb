require "rails_helper"

RSpec.describe "tacos", type: :feature do

  it "allows user to create and delete taco" do
    visit root_path
    choose('Tofu')
    check('Rice')
    check('Salsa')
    fill_in "taco_notes", with: "Test Note"
    click_button('Order Taco')
    # ensures that our asyncronous call is complete before we continue
    expect(page).to have_content('Order Taco', wait: true)
    # we should now have 2 table rows, including the header row
    expect(page).to have_css('table tr', count: 2)
    first('.btn-danger').click()
    expect(page).to have_content('Empty! Order some tacos!', wait: true)
  end

end
