require 'rubygems'
require 'nokogiri'
require 'open-uri'




url = "https://www.freecodecamp.com/kaileeagray"
doc = Nokogiri::HTML(open(url)).css(".row .col-md-offset-2")
puts doc.at_css("title").text
camper.points = doc.css("h1.text-primary").text.split[1]
camper.avatar = doc.at_css(".public-profile-img").attr('src')
