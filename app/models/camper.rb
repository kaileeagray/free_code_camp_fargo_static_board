class Camper < ApplicationRecord
  before_save { fcc_username.downcase! }

  validates :fcc_username, presence: true, length: { maximum: 100 },
                    uniqueness: { case_sensitive: false }

  def fcc_url
    "https://www.freecodecamp.com/#{self.fcc_username}"
  end

  def self.get_rank_hash
    rank_hash = {}
    rankings.each do |ranking|
      rank_hash[ranking.rank] = ranking.rankables
    end
    rank_hash
  end

  def self.rankings
    # this will be the automated daily task, eventually
    Ranker.rank(all, :by => :points)
  end
end
