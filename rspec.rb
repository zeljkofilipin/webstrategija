describe "Watir" do
  before(:all) do
		require "watir-webdriver"
    @browser = Watir::Browser.new :ff
  end

  it "should open google.hr when asked to open google.com" do
    @browser.goto "google.com"
		@browser.url.should == "http://www.google.hr/"
  end
  it "should should find Web::Strategija site when searching for Web Strategija" do
    @browser.text_field(:name => "q").set "WebStrategija"
		@browser.button(:name => "btnG").click
		@browser.text.include?("Web::Strategija").should == true
  end
end

