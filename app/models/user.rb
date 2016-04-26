class User < ActiveRecord::Base
  has_many :rides
  has_many :attractions, through: :rides

  def mood
    if self.nausea > self.happiness
      "sad"
    elsif self.happiness > self.nausea
      "happy"
    elsif self.happiness == self.nausea
      "neutral"
    end
  end

end
