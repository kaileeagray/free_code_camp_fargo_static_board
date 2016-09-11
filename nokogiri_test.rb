require 'rubygems'
require 'nokogiri'
require 'open-uri'

url = "https://www.freecodecamp.com/kaileeagray"
doc = Nokogiri::HTML(open(url))
puts doc.at_css("title").text
camper.points = doc.css("h1.text-primary").text.split[1]
camper.avatar = doc.at_css(".public-profile-img").attr('src')
social_links = doc.at_css("h1.profile-social-icons").css("a").collect do |a|
  a.attr("href")
end
