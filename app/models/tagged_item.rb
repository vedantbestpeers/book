class TaggedItem < ApplicationRecord
  belongs_to :item, class_name: "Note"
  belongs_to :item_tagging
end
