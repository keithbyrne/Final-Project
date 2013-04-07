class TicketnamesController < ApplicationController
  # GET /ticketnames
  # GET /ticketnames.json
  def index
    @ticketnames = Ticketname.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @ticketnames }
    end
  end

  # GET /ticketnames/1
  # GET /ticketnames/1.json
  def show
    @ticketname = Ticketname.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @ticketname }
    end
  end

  # GET /ticketnames/new
  # GET /ticketnames/new.json
  def new
    @ticketname = Ticketname.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @ticketname }
    end
  end

  # GET /ticketnames/1/edit
  def edit
    @ticketname = Ticketname.find(params[:id])
  end

  # POST /ticketnames
  # POST /ticketnames.json
  def create
    @ticketname = Ticketname.new(params[:ticketname])

    respond_to do |format|
      if @ticketname.save
        format.html { redirect_to @ticketname, notice: 'Ticketname was successfully created.' }
        format.json { render json: @ticketname, status: :created, location: @ticketname }
      else
        format.html { render action: "new" }
        format.json { render json: @ticketname.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /ticketnames/1
  # PUT /ticketnames/1.json
  def update
    @ticketname = Ticketname.find(params[:id])

    respond_to do |format|
      if @ticketname.update_attributes(params[:ticketname])
        format.html { redirect_to @ticketname, notice: 'Ticketname was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @ticketname.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ticketnames/1
  # DELETE /ticketnames/1.json
  def destroy
    @ticketname = Ticketname.find(params[:id])
    @ticketname.destroy

    respond_to do |format|
      format.html { redirect_to ticketnames_url }
      format.json { head :no_content }
    end
  end
end
