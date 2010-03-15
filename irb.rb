# $ irb

require "watir-webdriver"
# => true

b = Watir::Browser.new :chrome
# => #<Watir::Browser:0x1016097b0 url="" title="">

b.goto "webstrategija.com"
# => "http://www.webstrategija.com/"

b.link(:text => /PRIJAVITE SE/).flash
# => 10

b.link(:text => /PRIJAVITE SE/).click
# => []

b.radio(:name => "data[type]").flash
# => 10

b.radio(:name => "data[type]", :value => "1").flash
# => 10

b.radio(:name => "data[type]", :value => "1").click
# => []

b.select_list(:id => "status").flash
# => 10

b.select_list(:id => "status").select "Novinar"
# => "Novinar"

b.text_field(:name => "data[name]").set "test"
# => ["test"]

b.button(:value => "Odustani").flash
# => 10

b.button(:value => "Odustani").click
# => []

b.url
# => "http://www.webstrategija.com/07/prijava"

b.text.include? "Sudionik"
# => true

#b.text.include? "Slon"
# => false
