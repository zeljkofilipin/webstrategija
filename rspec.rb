describe "Watir" do
  before(:all) do
		require "watir-webdriver"
#    @browser = Watir::Browser.new :ff
#		@times = 10

    @browser = Watir::Browser.new :chrome
		@times = 1

  end
	it "should open Github home page when asked for github.com" do
		@browser.goto "github.com"
		@browser.url.should == "http://github.com/"
	end
	it "should find Bret's repository when searching for Watir" do
		@times.times {@browser.text_field(:name => "q").flash}
		@browser.text_field(:name => "q").set "watir"

		@times.times {@browser.button(:alt => "search").flash}
		@browser.button(:alt => "search").click

		@browser.text.include?("bret").should == true
	end
	it "should do some smoke and mirrors" do
		@times.times {@browser.select_list(:name => "type").flash}
		@browser.select_list(:name => "type").select "Code"

		@times.times {@browser.select_list(:name => "language").flash}
		@browser.select_list(:name => "language").select "Ruby"

		@times.times {@browser.text_field(:name => "q", :index => 1).flash}
		@browser.text_field(:name => "q", :index => 1).set "watir"

		@times.times {@browser.button(:alt => "search").flash}

		@times.times {@browser.link(:text => "bret / watir").flash}
		@browser.link(:text => "bret / watir").click
	end
end
