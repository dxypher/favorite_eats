require 'spec_helper'

feature 'View the homepage' do
  scenario 'user sees title and description of app' do
    visit root_path
    expect(page).to have_css 'title', text: 'Favorite Eats'
    expect(page).to have_css '[data-role="description"]'
  end
end