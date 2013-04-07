class MoviesController < ApplicationController
  # GET /movies
  # GET /movies.json
  before_filter :ensure_admin, :except => [:index, :show, :search, :category]
  def index
    @movies = Movie.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @movies }
    end
  end

  # GET /movies/1
  # GET /movies/1.json
  def show
    @movie = Movie.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @movie }
    end
  end

  # GET /movies/new
  # GET /movies/new.json
  def new
    @movie = Movie.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @movie }
    end
  end

  # GET /movies/1/edit
  def edit
    @movie = Movie.find(params[:id])
  end

  # POST /movies
  # POST /movies.json
  def create
    @movie = Movie.new(params[:movie])

    respond_to do |format|
      if @movie.save
        format.html { redirect_to @movie, notice: 'Movie was successfully created.' }
        format.json { render json: @movie, status: :created, location: @movie }
      else
        format.html { render action: "new" }
        format.json { render json: @movie.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /movies/1
  # PUT /movies/1.json
  def update
    @movie = Movie.find(params[:id])

    respond_to do |format|
      if @movie.update_attributes(params[:movie])
        format.html { redirect_to @movie, notice: 'Movie was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @movie.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /movies/1
  # DELETE /movies/1.json
  def destroy
    @movie = Movie.find(params[:id])
    @movie.destroy

    respond_to do |format|
      format.html { redirect_to movies_url}
      format.json { head :no_content }
    end
  end
  # added search 13/03/13
  def search
    @search_term = params[:q]
    st = "%#{params[:q]}%"
    @movies = Movie.where("Name like ? or Description like?", st, st)
    
    respond_to do |format|
        format.html # home.html.erb
        format.json {render json: @movies}
      end
    end
  
# added category 13/03.13
  def category
    @movies = Movie.find_all_by_category(params[:id])
    @category = params[:id]
    
    respond_to do |format|
      format.html # home.html.erb
      format.json {render json: @movies}
    end
  end
  
  def ensure_admin
      unless current_user && current_user.admin?
      render :text => "Access Error Message", :status => :unauthorized
    end
  end
end
