class AddNoteIdToNotebooks < ActiveRecord::Migration[6.1]
  def change
    add_column :notebooks, :note_id, :integer
  end
end
