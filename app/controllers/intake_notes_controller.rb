class IntakeNotesController < ApplicationController
  # GET /intake_notes
  # GET /intake_notes.json
  def index
    @intake_notes = IntakeNote.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @intake_notes }
    end
  end

  # GET /intake_notes/1
  # GET /intake_notes/1.json
  def show
    @intake_note = IntakeNote.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @intake_note }
    end
  end

  # GET /intake_notes/new
  # GET /intake_notes/new.json
  def new
    @intake_note = IntakeNote.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @intake_note }
    end
  end

  # GET /intake_notes/1/edit
  def edit
    @intake_note = IntakeNote.find(params[:id])
  end

  # POST /intake_notes
  # POST /intake_notes.json
  def create
    @intake_note = IntakeNote.new(params[:intake_note])

    respond_to do |format|
      if @intake_note.save
        format.html { redirect_to @intake_note, notice: 'Intake note was successfully created.' }
        format.json { render json: @intake_note, status: :created, location: @intake_note }
      else
        format.html { render action: "new" }
        format.json { render json: @intake_note.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /intake_notes/1
  # PUT /intake_notes/1.json
  def update
    @intake_note = IntakeNote.find(params[:id])

    respond_to do |format|
      if @intake_note.update_attributes(params[:intake_note])
        format.html { redirect_to @intake_note, notice: 'Intake note was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @intake_note.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /intake_notes/1
  # DELETE /intake_notes/1.json
  def destroy
    @intake_note = IntakeNote.find(params[:id])
    @intake_note.destroy

    respond_to do |format|
      format.html { redirect_to intake_notes_url }
      format.json { head :no_content }
    end
  end
end
