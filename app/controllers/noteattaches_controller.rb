class NoteattachesController < ApplicationController
  before_action :set_noteattach, only: [:show, :edit, :update, :destroy]

  # GET /noteattaches
  # GET /noteattaches.json
  def index
    @noteattaches = Noteattach.all.order('created_at DESC')
  end

  # GET /noteattaches/1
  # GET /noteattaches/1.json
  def show
  end

  # GET /noteattaches/new
  def new
    @noteattach = Noteattach.new
  end

  # GET /noteattaches/1/edit
  def edit
  end

  # POST /noteattaches
  # POST /noteattaches.json
  def create
    @noteattach = Noteattach.new(noteattach_params)


    respond_to do |format|
      if @noteattach.save
        format.html { redirect_to contact_path(@noteattach.contact_id), notice: 'Attachment was successfully created.' }
        format.json { render :show, status: :created, location: @noteattach }
      else
        format.html { render :new }
        format.json { render json: @noteattach.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /noteattaches/1
  # PATCH/PUT /noteattaches/1.json
  def update
    respond_to do |format|
      if @noteattach.update(noteattach_params)
        format.html { redirect_to contact_path(contact.id), notice: 'Attachment was successfully updated.' }
        format.json { render :show, status: :ok, location: @noteattach }
      else
        format.html { render :edit }
        format.json { render json: @noteattach.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /noteattaches/1
  # DELETE /noteattaches/1.json
  def destroy
    @noteattach.destroy
    respond_to do |format|
      format.html { redirect_to noteattaches_url, notice: 'Attachment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_noteattach
      @noteattach = Noteattach.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def noteattach_params
      params.require(:noteattach).permit(:name, :attach, :note_id, :contact_id)
    end
end
