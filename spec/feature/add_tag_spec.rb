require 'spec_helper'

  feature 'add a tag' do
    scenario 'user adds a tag to a link' do
    visit '/'
    click_button('Click here to see your favorite web pages from the internet')
    click_button('Add Link')
    fill_in "url", :with => "http://www.sanger.dk"
    fill_in "title", :with => "Window cleaning"
    fill_in "tag", :with => "video"
    click_button 'submit'
    expect(page).to have_content('video')
    end
  end
