require 'spec_helper'

  feature 'filter tags' do
    scenario 'use filters links by tags' do
    add_tag
    fill_in "tag", :with => "video"
    click_button "Search tags"

    expect(page).to have_content('Window cleaning')
    end
  end
