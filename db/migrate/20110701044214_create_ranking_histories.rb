class CreateRankingHistories < ActiveRecord::Migration
  def self.up
    create_table :ranking_histories do |t|
      t.references :player
      t.references :match
      t.integer :previous_rating

      t.timestamps
    end
  end

  def self.down
    drop_table :ranking_histories
  end
end
