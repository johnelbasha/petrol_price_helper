require 'rails_helper'

RSpec.feature 'Viewing sites' do
  # will uncomments these after proving that Capybara is working

  # let!(:site1) { Site.create(name: 'Manchester') }
  # let!(:site2) { Site.create(name: 'Liverpool') }
  # let!(:site3) { Site.create(name: 'London') }

  scenario 'User views the list of sites' do
    # Will use this helper after proving that Capybara is working
    # visit sites_path
    visit '/sites'

    expect(page).to have_content('Manchester')
    expect(page).to have_content('Liverpool')
    expect(page).to have_content('London')
  end
end
