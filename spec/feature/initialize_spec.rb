require 'capybara/rspec'
require './app.rb'
Capybara.app = DB

describe "the first get request", :type => :feature do

  it "takes my query string and displays it on the page" do
    visit '/set?mom=joey'
    expect(page).to have_content 'Hello joey'
  end

  it "takes my query string and displays it on the page" do
    visit '/set?key=joey'
    visit '/get?key=key'
    expect(page).to have_content 'Hello joey'
  end
end
