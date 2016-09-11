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
    self.points = doc.css("h1.text-primary").text.split[1] if doc.css("h1.text-primary")
    self.avatar = doc.at_css(".public-profile-img").attr('src') if doc.at_css(".public-profile-img")
    self.points = 0 if self.points.nil? || self.points.blank?
    self.avatar = "no-face.png" if self.avatar.nil? || self.avatar.blank?
    self.save
  end

  def self.get_rank_hash
    rank_hash = {}
    Ranker.rank(Camper.all, :by => :points).each do |ranking|
      rank_hash[ranking.rank] = ranking.rankables
    end
    rank_hash
  end

end
