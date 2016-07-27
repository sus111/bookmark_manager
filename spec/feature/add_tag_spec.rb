require 'spec_helper'

  feature 'add a tag' do
    scenario 'user adds a tag to a link' do
    add_tag
    expect(page).to have_content('Window cleaning')
    end
  end
