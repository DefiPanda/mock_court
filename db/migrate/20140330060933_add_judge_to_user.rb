class AddJudgeToUser < ActiveRecord::Migration
  def change
    add_column :users, :judge, :boolean
  end
end
