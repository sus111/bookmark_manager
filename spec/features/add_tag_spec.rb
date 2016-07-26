require './spec/spec_helper'

  feature 'Add tag to a link' do
    scenario 'I want to add a tag to a link' do
      visit '/links/new'
      fill_in 'tag', with: 'news'
      click_button 'Add site'
      expect(current_path).to eq '/links'
      within 'ul#links' do
        expect(page).to have_content('news')
      end
    end
  end
