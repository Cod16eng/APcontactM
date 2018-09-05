class NotesController < ApplicationController
	before_action :find_contact
	before_action :find_note, only: [:edit, :update, :destroy]
def index
	@notes = note.search(params[:search])
end	
def create	
	@note = @contact.notes.create(note_params)
	@note.user_id = current_user.id

	if @note.save
		flash[:success] = "Successfully created new note"
  		redirect_to contact_path(@contact)
  	else
  	   render 'new'
  	end
end

def edit 
end

def update
	if @note.update(note_params)
	  redirect_to contact_path(@contact)
	else
	  render 'edit'
	end
end

def destroy
	@note.destroy
	redirect_to contact_path(@contact)
end



private
def note_params
  params.require(:note).permit(:content, :search)	
end

def find_contact
	@contact = Contact.find(params[:contact_id])	
end

def find_note
	@note = @contact.notes.find(params[:id])	
end

end
