require 'spec_helper'

  feature 'add multiple tags' do
    scenario 'user can add multiple tags to a link' do
      visit '/'
      click_button('Click here to see your favorite web pages from the internet')
      click_button('Add Link')
      fill_in "url", :with => "http://www.sanger.dk"
      fill_in "title", :with => "Window cleaning"
      fill_in "tag", :with => "window dog"
      click_button 'submit'
      link = Link.first
      expect(link.tags.map(&:tag)).to include('window', 'dog')
    end
  end
