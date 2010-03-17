describe "Watir" do
  before(:all) do
		require "watir-webdriver"
    @browser = Watir::Browser.new :ff
  end
	it "should open www.webstrategija.com when navigating to webstrategija.com" do
		@browser.goto "webstrategija.com"
		@browser.url.should == "http://www.webstrategija.com/"
	end
	it "should open when 'Kontakt' link is clicked"
end
