class User < ActiveRecord::Base
  # write associations here
  has_many :rides
  has_many :attractions, through: :rides

  def mood
    #sad if nausea > happiness
    #happy if happiness > nausea
    self.happiness > self.nausea ? "happy" : "sad"
  end

end
