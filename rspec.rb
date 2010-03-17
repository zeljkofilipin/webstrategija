describe "Watir" do
  before(:all) do
		require "watir-webdriver"
    @browser = Watir::Browser.new :ff
  end
	it "should open Github home page when asked for github.com" do
		@browser.goto "github.com"
		@browser.url.should == "http://github.com/"
	end
end
