class CreateGames < ActiveRecord::Migration
  def self.up
    create_table :games do |t|
      t.integer :winner
      t.integer :winner_rating_prior
      t.integer :loser
      t.integer :loser_rating_prior

      t.timestamps
    end
  end

  def self.down
    drop_table :games
  end
end
