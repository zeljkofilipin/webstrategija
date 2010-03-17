describe "Watir" do
  before(:all) do
		require "watir-webdriver"
    @browser = Watir::Browser.new :ff
  end
end
