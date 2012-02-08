class OrdinariosController < ApplicationController
  # GET /ordinarios
  # GET /ordinarios.json
  def index
    @ordinarios = Ordinario.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @ordinarios }
    end
  end

  # GET /ordinarios/1
  # GET /ordinarios/1.json
  def show
    @ordinario = Ordinario.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @ordinario }
    end
  end

  # GET /ordinarios/new
  # GET /ordinarios/new.json
  def new
    @ordinario = Ordinario.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @ordinario }
    end
  end

  # GET /ordinarios/1/edit
  def edit
    @ordinario = Ordinario.find(params[:id])
  end

  # POST /ordinarios
  # POST /ordinarios.json
  def create
    @ordinario = Ordinario.new(params[:ordinario])

    respond_to do |format|
      if @ordinario.save
        format.html { redirect_to @ordinario, notice: 'Ordinario was successfully created.' }
        format.json { render json: @ordinario, status: :created, location: @ordinario }
      else
        format.html { render action: "new" }
        format.json { render json: @ordinario.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /ordinarios/1
  # PUT /ordinarios/1.json
  def update
    @ordinario = Ordinario.find(params[:id])

    respond_to do |format|
      if @ordinario.update_attributes(params[:ordinario])
        format.html { redirect_to @ordinario, notice: 'Ordinario was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @ordinario.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ordinarios/1
  # DELETE /ordinarios/1.json
  def destroy
    @ordinario = Ordinario.find(params[:id])
    @ordinario.destroy

    respond_to do |format|
      format.html { redirect_to ordinarios_url }
      format.json { head :ok }
    end
  end
end
