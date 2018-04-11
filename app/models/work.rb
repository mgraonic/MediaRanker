class Work < ApplicationRecord
  has_many :votes

  def vote_count
    self.votes.where(work_id: self.id).count
  end
end
