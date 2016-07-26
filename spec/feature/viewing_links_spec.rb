require 'spec_helper'

feature 'viewing links' do

  scenario "user visits home page" do
    Link.create(url: 'http://omfgdog.com', title: 'The dogs' )
    visit ('/links')
    expect(page.status_code).to eq 200
    within 'ul#links' do
      expect(page).to have_content('The dogs')
    end
  end
end
