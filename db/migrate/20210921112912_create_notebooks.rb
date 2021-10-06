class CreateNotebooks < ActiveRecord::Migration[6.1]
  def change
    create_table :notebooks do |t|
      t.string :type
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
