class StoryBelongsToAdminUser < ActiveRecord::Migration[6.0]
  def change
    add_reference :stories, :admin_user, foreign_key: true
    add_column :admin_users, :rank, :integer
  end
end
