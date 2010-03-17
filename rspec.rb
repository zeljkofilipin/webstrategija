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
		@browser.text_field(:name => "q").flash
		@browser.text_field(:name => "q").set "watir"

		@browser.button(:alt => "search").flash
		@browser.button(:alt => "search").click

		@browser.text.include?("bret").should == true
	end
end
