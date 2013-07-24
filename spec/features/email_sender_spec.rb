require 'spec_helper'

feature "Email to friend" do
  given!(:product) { create(:product, name: "Moose Roadsign", sku: "A100") }
  given(:mail_data) { build(:valid_email) }

  background do
    visit spree.product_path(product)
    click_link "Email a friend"
  end

  scenario "should throw error on empty form submission" do
    click_button "Tell your friend!"
    expect(page).to have_text "There were problems with the following fields:"
  end

  scenario "should send email to friend" do
    fill_in "mail_to_friend_sender_name", with: "Ryan"
    fill_in "mail_to_friend_sender_email", with: "ryan@spreecommerce.com"
    fill_in "mail_to_friend_recipient_name", with: "Ryan Bigg"
    fill_in "mail_to_friend_recipient_email", with: "ryan@spreecommerce.com"
    fill_in "mail_to_friend_message", with: "Hi, there."
    click_button "Tell your friend!"
    expect(current_path).to eq spree.product_path(product)
  end
end
