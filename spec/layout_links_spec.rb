require 'spec_helper'

describe "LayoutLinks" do
  it "Should have Home page at /" do
    get '/'
    response.should have_selector('title', :content => "Home")
  end

  it "Should have a Contact page at /contact" do
    get '/contact'
    response.should have_selector('title', :content => "Contact")
  end

  it "Should have a About page /about" do
    get '/about'
    response.should have_selector('title', :content => "/about")
  end

  it "Should have a Help page /help" do
    get '/help'
    response.should have_selector('title', :content => "/help")
  end

end