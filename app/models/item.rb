class Item < Notebook
  belongs_to :note, class_name: "Note"
  has_many :tagged_items
  has_many :item_taggings , through: :tagged_items
end
