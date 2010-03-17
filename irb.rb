#$ irb

require "watir-webdriver"
# => true

b = Watir::Browser.new :ff
# => #<Watir::Browser:0x101682818 url="about:blank" title="">

b.goto "github.com"
# => "http://github.com/"

b.text_field(:index => 0).flash
# => 10

b.text_field(:index => 0).id
# => ""

b.text_field(:index => 0).name
# => "q"

b.text_field(:name => "q").flash
# => 10

b.text_field(:name => "q").set "watir"
#=> ["watir"]

b.button(:alt => "search").flash
# => 10

b.button(:alt => "search").click
# => []

b.url
# => "http://github.com/search?q=watir&x=0&y=0"

b.text.include? "bret"
# => true
