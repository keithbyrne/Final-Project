class ScreeningroomsController < ApplicationController
  # GET /screeningrooms
  # GET /screeningrooms.json
  def index
    @screeningrooms = Screeningroom.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @screeningrooms }
    end
  end

  # GET /screeningrooms/1
  # GET /screeningrooms/1.json
  def show
    @screeningroom = Screeningroom.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @screeningroom }
    end
  end

  # GET /screeningrooms/new
  # GET /screeningrooms/new.json
  def new
    @screeningroom = Screeningroom.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @screeningroom }
    end
  end

  # GET /screeningrooms/1/edit
  def edit
    @screeningroom = Screeningroom.find(params[:id])
  end

  # POST /screeningrooms
  # POST /screeningrooms.json
  def create
    @screeningroom = Screeningroom.new(params[:screeningroom])

    respond_to do |format|
      if @screeningroom.save
        format.html { redirect_to @screeningroom, notice: 'Screeningroom was successfully created.' }
        format.json { render json: @screeningroom, status: :created, location: @screeningroom }
      else
        format.html { render action: "new" }
        format.json { render json: @screeningroom.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /screeningrooms/1
  # PUT /screeningrooms/1.json
  def update
    @screeningroom = Screeningroom.find(params[:id])

    respond_to do |format|
      if @screeningroom.update_attributes(params[:screeningroom])
        format.html { redirect_to @screeningroom, notice: 'Screeningroom was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @screeningroom.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /screeningrooms/1
  # DELETE /screeningrooms/1.json
  def destroy
    @screeningroom = Screeningroom.find(params[:id])
    @screeningroom.destroy

    respond_to do |format|
      format.html { redirect_to screeningrooms_url }
      format.json { head :no_content }
    end
  end
end
