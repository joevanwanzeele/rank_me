class Rating
  include ActiveModel::Validations
  include ActiveModel::Conversion
  extend ActiveModel::Naming
  
  attr_accessor :winner_rating, :loser_rating, :new_winner_rating, :new_loser_rating

  validates_presence_of :winner_rating, :loser_rating
  
  def initialize(attributes = {})
    attributes.each do |name, value|
      send("#{name}=", value)
    end
  end

  def persisted?
    false
  end
end
