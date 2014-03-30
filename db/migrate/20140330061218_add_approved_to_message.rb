class AddApprovedToMessage < ActiveRecord::Migration
  def change
    add_column :messages, :approved, :boolean
  end
end
