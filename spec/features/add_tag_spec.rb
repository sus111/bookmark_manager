require './spec/spec_helper'

  feature 'Add tag to a link' do
    scenario 'I want to add a tag to a link' do
      visit '/links/new'

      fill_in 'url',   with: 'http://www.bbc.com'
      fill_in 'title', with: 'BBC News'
      fill_in 'tags',  with: 'news'

      click_button 'Add site'
      link = Link.first
      p link
      expect(link.tags.map(&:name)).to include('news')
    end
  end
