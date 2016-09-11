desc "Fetch Fargo Free Code Camper info"
task :fetch_fcc => :environment do
  require 'nokogiri'
  require 'open-uri'
  Camper.all.each do |camper|
    url = camper.fcc_url
    doc = Nokogiri::HTML(open(url))
    points = doc.css("h1.text-primary").text.split[1]
    avatar = doc.at_css(".public-profile-img").attr('src') if doc.at_css(".public-profile-img")
    # social_links = doc.at_css("h1.profile-social-icons").css("a").collect do |a|
    #   a.attr("href")
    # end
    camper.update(points: points, avatar: avatar)
  end
end
