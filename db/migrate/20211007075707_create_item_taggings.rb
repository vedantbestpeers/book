class CreateItemTaggings < ActiveRecord::Migration[6.1]
  def change
    create_table :item_taggings do |t|
      t.string :tag

      t.timestamps
    end
  end
end
