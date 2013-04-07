class TickettypesController < ApplicationController
  # GET /tickettypes
  # GET /tickettypes.json
  def index
    @tickettypes = Tickettype.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @tickettypes }
    end
  end

  # GET /tickettypes/1
  # GET /tickettypes/1.json
  def show
    @tickettype = Tickettype.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @tickettype }
    end
  end

  # GET /tickettypes/new
  # GET /tickettypes/new.json
  def new
    @tickettype = Tickettype.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @tickettype }
    end
  end

  # GET /tickettypes/1/edit
  def edit
    @tickettype = Tickettype.find(params[:id])
  end

  # POST /tickettypes
  # POST /tickettypes.json
  def create
    @tickettype = Tickettype.new(params[:tickettype])

    respond_to do |format|
      if @tickettype.save
        format.html { redirect_to @tickettype, notice: 'Tickettype was successfully created.' }
        format.json { render json: @tickettype, status: :created, location: @tickettype }
      else
        format.html { render action: "new" }
        format.json { render json: @tickettype.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /tickettypes/1
  # PUT /tickettypes/1.json
  def update
    @tickettype = Tickettype.find(params[:id])

    respond_to do |format|
      if @tickettype.update_attributes(params[:tickettype])
        format.html { redirect_to @tickettype, notice: 'Tickettype was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @tickettype.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tickettypes/1
  # DELETE /tickettypes/1.json
  def destroy
    @tickettype = Tickettype.find(params[:id])
    @tickettype.destroy

    respond_to do |format|
      format.html { redirect_to tickettypes_url }
      format.json { head :no_content }
    end
  end
end
