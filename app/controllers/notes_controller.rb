class NotesController < ApplicationController
  def index
    @notes = Note.all
  end

  def show
    @notes = Note.find(params[:id])
  end

  def new
    @notes = Note.new
  end

  def create
    @notes = Note.new(note_params)

    if @notes.save
      redirect_to @notes
    else
      render :new
    end  
  end

  private
    def note_params
      params.require(:note).permit(:title, :description)
    end
  
end
