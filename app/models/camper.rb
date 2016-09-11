class Camper < ApplicationRecord
  before_save { fcc_username.downcase! }

  validates :fcc_username, presence: true, length: { maximum: 100 },
                    uniqueness: { case_sensitive: false }

  def fcc_url
    "https://www.freecodecamp.com/#{self.fcc_username}"
  end
end
