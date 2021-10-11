class ItemsController < ApplicationController
  def index
    @items = Item.all
  end
  def show
    @item = Item.find(params[:id])
  end

  def new
    @item = Item.new
  end

  def create
    @note = Note.find(params[:note_id])
    @item = @note.items.create(item_params)
    redirect_to note_path(@note)
    byebug
  end

  private
    def comment_params
      params.require(:item).permit(:title, :description)
    end
end