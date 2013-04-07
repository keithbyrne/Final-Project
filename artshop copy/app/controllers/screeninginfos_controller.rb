class ScreeninginfosController < ApplicationController
  # GET /screeninginfos
  # GET /screeninginfos.json
  def index
    @screeninginfos = Screeninginfo.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @screeninginfos }
    end
  end

  # GET /screeninginfos/1
  # GET /screeninginfos/1.json
  def show
    @screeninginfo = Screeninginfo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @screeninginfo }
    end
  end

  # GET /screeninginfos/new
  # GET /screeninginfos/new.json
  def new
    @screeninginfo = Screeninginfo.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @screeninginfo }
    end
  end

  # GET /screeninginfos/1/edit
  def edit
    @screeninginfo = Screeninginfo.find(params[:id])
  end

  # POST /screeninginfos
  # POST /screeninginfos.json
  def create
    @screeninginfo = Screeninginfo.new(params[:screeninginfo])

    respond_to do |format|
      if @screeninginfo.save
        format.html { redirect_to @screeninginfo, notice: 'Screeninginfo was successfully created.' }
        format.json { render json: @screeninginfo, status: :created, location: @screeninginfo }
      else
        format.html { render action: "new" }
        format.json { render json: @screeninginfo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /screeninginfos/1
  # PUT /screeninginfos/1.json
  def update
    @screeninginfo = Screeninginfo.find(params[:id])

    respond_to do |format|
      if @screeninginfo.update_attributes(params[:screeninginfo])
        format.html { redirect_to @screeninginfo, notice: 'Screeninginfo was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @screeninginfo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /screeninginfos/1
  # DELETE /screeninginfos/1.json
  def destroy
    @screeninginfo = Screeninginfo.find(params[:id])
    @screeninginfo.destroy

    respond_to do |format|
      format.html { redirect_to screeninginfos_url }
      format.json { head :no_content }
    end
  end
end
