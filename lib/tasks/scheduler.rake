desc "This task is called by the Heroku scheduler add-on. Fetch Fargo Free Code Camper info."
task :fetch_fcc => :environment do
  require 'nokogiri'
  require 'open-uri'
  Camper.all.each do |camper|
    doc = Nokogiri::HTML(open(camper.fcc_url))
    camper.scrape_fcc
  end
  Camper.where(avatar: "no-face.png").destroy_all
end
