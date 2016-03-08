class ChangeRankToPointsInVotes < ActiveRecord::Migration
  def change
  	rename_column :votes, :rank, :points
  end
end
