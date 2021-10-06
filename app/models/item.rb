class Item < Notebook
  belongs_to :note, class_name: "Note"
end
