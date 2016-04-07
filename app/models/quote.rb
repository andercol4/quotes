class Quote < ActiveRecord::Base
  belongs_to :user
  belongs_to :source
  validates_presence_of :source
  
  def self.ordered_quote
    select("quotes.*")
    .joins("INNER JOIN sources s ON s.id = quotes.source_id")
    .order("s.name")
  end
end
