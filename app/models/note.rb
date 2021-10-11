class Note < Notebook
  has_many :items, class_name: "Item", foreign_key: "note_id"

  validates :title, presence: true
  validates :description, presence: true
end
