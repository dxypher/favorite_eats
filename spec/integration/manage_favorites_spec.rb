require 'spec_helper'

feature 'Manage favorites' do
  scenario 'user signs in and sees their favorites page' do
    visit new_user_session_path
    fill_in 'Email', with: 'test@example.com'
    fill_in 'Password', with: '19471947'
    click_button 'Sign in'

    expect(page).to have_css 'div.flash_alert'
  end
end