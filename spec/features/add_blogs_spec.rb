require 'rails_helper'

RSpec.describe 'Add a new blog', type: :request do
  context 'when user is logged in' do

    before(:each) do
    end    

    it 'can add a blog and be redirected to front page' do
      user = FactoryGirl.create(
        :user,
        :name => 'Herve',
        :email => 'herve@orahq.com',
        :password => 'secret',
        :password_confirmation => 'secret'
      )

      visit '/'
      save_and_open_page
      find_link('Login').click
      fill_in 'email', :with => 'herve@orahq.com'
      fill_in 'Password', :with => 'secret'
      click_button 'Log in'

      expect(page).to have_selector('.action-buttons-wrapper')
    end
  end
end
