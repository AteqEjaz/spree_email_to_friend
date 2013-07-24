require 'spec_helper'

feature "Admin Captcha Settings" do
  stub_authorization!

  context "when update" do
    background "should visit admin pannel" do
      visit spree.admin_path
      click_link "Configuration"
    end

    scenario "should display Captcha Settings on front end" do
      page.should have_content "Captcha Settings"
      click_link "Captcha Settings"
      choose "Yes"
      click_button "Update"
      find_field("Yes").value.should_not be_blank
    end

    scenario "should not display Captcha Settings on front end" do
      click_link "Captcha Settings"
      choose "No"
      click_button "Update"
      find_field("No").value.should_not be_blank
    end
  end
end
