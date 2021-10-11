class ItemTagging < ApplicationRecord
    has_many :tagged_items
    has_many :items , through: :tagged_items, class_name: 'Note'
    
end
