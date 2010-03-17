describe "Watir" do
  before(:all) do
		require "watir-webdriver"
    @browser = Watir::Browser.new :ff
  end
	it "should open Github home page when asked for github.com" do
		@browser.goto "github.com"
		@browser.url.should == "http://github.com/"
	end
	it "should find Bret's repository when searching for Watir" do
		10.times {@browser.text_field(:name => "q").flash}
		@browser.text_field(:name => "q").set "watir"

		10.times {@browser.button(:alt => "search").flash}
		@browser.button(:alt => "search").click

		@browser.text.include?("bret").should == true
	end
	it "should do some smoke and mirrors" do
		10.times {@browser.select_list(:name => "type").flash}
		@browser.select_list(:name => "type").select "Code"

		10.times {@browser.select_list(:name => "language").flash}
		@browser.select_list(:name => "language").select "Ruby"

		10.times {@browser.text_field(:name => "q", :index => 1).flash}
		@browser.text_field(:name => "q", :index => 1).set "watir"

		10.times {@browser.button(:alt => "search").flash}

		10.times {@browser.link(:text => "bret / watir").flash}
		@browser.link(:text => "bret / watir").click
	end
end
