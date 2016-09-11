require 'pry'

class Camper < ApplicationRecord
  before_save { fcc_username.downcase! }

  validates :fcc_username, presence: true, length: { maximum: 100 },
                    uniqueness: { case_sensitive: false }

  def fcc_url
    "https://www.freecodecamp.com/#{CGI.escape(self.fcc_username)}"
  end

  def fcc_url_valid?
    doc = Nokogiri::HTML(open(self.fcc_url))
    if doc.css(".negative-30")
      self.points = doc.css("h1.text-primary").text.split[1] if doc.css("h1.text-primary")
      self.avatar = doc.at_css(".public-profile-img").attr('src') if doc.at_css(".public-profile-img")
      true
    else
      false
    end
  end

  def self.get_rank_hash
    rank_hash = {}
    Ranker.rank(Camper.all, :by => :points).each do |ranking|
      rank_hash[ranking.rank] = ranking.rankables
    end
    rank_hash
  end

end
