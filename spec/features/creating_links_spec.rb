require './spec/spec_helper'

feature 'Creating links' do
  scenario 'I want to fill out a form with title and URL' do
    #Link.create(url: 'http://www.makersacademy.com', title: 'Makers Academy')
    visit '/links/new'
    expect(page.status_code).to eq 200
    find_field('Title').value
    find_field('URL').value
    expect(page).to have_button('Add site')
  end
end
