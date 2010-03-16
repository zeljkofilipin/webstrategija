describe "Watir" do
  before(:all) do
		require "watir-webdriver"
    @browser = Watir::Browser.new :ff
  end

  it "should open google.hr when asked to open google.com" do
    @browser.goto "google.com"
		@browser.url.should == "http://www.google.hr/"
  end
end

