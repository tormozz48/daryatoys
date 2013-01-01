class RenameCommentToResponse < ActiveRecord::Migration
  def up
    rename_table :comments, :responses
  end

  def down
    rename_table :responses, :comments
  end
end
