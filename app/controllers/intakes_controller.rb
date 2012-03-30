class IntakesController < ApplicationController
  # GET /intakes
  # GET /intakes.json
  def index
    @intakes = Intake.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @intakes }
    end
  end

  # GET /intakes/1
  # GET /intakes/1.json
  def show
    @intake = Intake.find(params[:id])
    @intake_note = @intake.intake_notes.all
    @new_note = @intake.intake_notes.build
  end

  # GET /intakes/new
  # GET /intakes/new.json
  def new
    @intake = Intake.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @intake }
    end
  end

  # GET /intakes/1/edit
  def edit
    @intake = Intake.find(params[:id])
  end

  # POST /intakes
  # POST /intakes.json
  def create
    @intake = Intake.new(params[:intake])

    respond_to do |format|
      if @intake.save
        flash[:success] = "Intake was successfully created."
        format.html { redirect_to @intake, notice: 'Intake was successfully updated.' }
      else
        format.html { render action: "new" }
        format.json { render json: @intake.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /intakes/1
  # PUT /intakes/1.json
  def update
    @intake = Intake.find(params[:id])

    respond_to do |format|
      if @intake.update_attributes(params[:intake])
        format.html { redirect_to @intake, notice: 'Intake was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @intake.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /intakes/1
  # DELETE /intakes/1.json
  def destroy
    @intake = Intake.find(params[:id])
    @intake.destroy

    respond_to do |format|
      flash[:success] = "Intake successfully detroyed!"
      format.html { redirect_to intakes_url }
      format.json { head :no_content }
    end
  end
end
