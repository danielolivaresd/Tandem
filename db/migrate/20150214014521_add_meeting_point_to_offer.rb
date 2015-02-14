class AddMeetingPointToOffer < ActiveRecord::Migration
  def change
    add_column :offers, :meeting_point, :string
  end
end
