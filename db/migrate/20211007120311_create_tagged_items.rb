class CreateTaggedItems < ActiveRecord::Migration[6.1]
  def change
    create_table :tagged_items do |t|
      t.references :item, null: false, foreign_key: true
      t.references :item_tagging, null: false, foreign_key: true

      t.timestamps
    end
  end
end
