class Url < ActiveRecord::Base
  validates :long, format: { with: VALID_EMAIL_REGEX }

  after_create :generate_short

  def generate_short
    self.short = self.id.to_s(36)
    self.save
  end

  def short_url
    "http://localhost:3000/" + self.short
  end

end
