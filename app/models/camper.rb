require 'pry'

class Camper < ApplicationRecord
  before_save { fcc_username.downcase! }
  before_save { fcc_username.downcase! }


  validates :fcc_username, presence: true, length: { maximum: 100 },
                    uniqueness: { case_sensitive: false }

  def fcc_url
    "https://www.freecodecamp.com/#{CGI.escape(self.fcc_username)}"
  end

  def scrape_fcc
    doc = Nokogiri::HTML(open(self.fcc_url))
    unless doc.css(".col-md-offset-2").blank?
      self.points = doc.css("h1.text-primary").text.split[1] if doc.css("h1.text-primary") || 0
      self.avatar = doc.at_css(".public-profile-img").attr("src")
      self.save
    end
  end

  def self.scrape_all
    all.each do |camper|
      camper.scrape_fcc
    end
  end

  def self.get_rank_hash
    scrape_all
    rank_hash = {}
    Ranker.rank(Camper.all, :by => :points).each do |ranking|
      rank_hash[ranking.rank] = ranking.rankables
    end
    rank_hash
  end

end
