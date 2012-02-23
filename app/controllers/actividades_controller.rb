class ActividadesController < ApplicationController
  http_basic_authenticate_with :name => "actividades", :password => "actividades", :except => :index, :except => :show
  # GET /actividades
  # GET /actividades.json
  def index
    @actividades = Actividade.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @actividades }
    end
  end

  # GET /actividades/1
  # GET /actividades/1.json
  def show
    @actividade = Actividade.find(params[:id])
    @alumnos = @actividade.alumnos

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @actividade }
    end
  end

  # GET /actividades/new
  # GET /actividades/new.json
  def new
    @actividade = Actividade.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @actividade }
    end
  end

  # GET /actividades/1/edit
  def edit
    @actividade = Actividade.find(params[:id])
  end

  # POST /actividades
  # POST /actividades.json
  def create
    @actividade = Actividade.new(params[:actividade])

    respond_to do |format|
      if @actividade.save
        format.html { redirect_to @actividade, notice: 'Actividade was successfully created.' }
        format.json { render json: @actividade, status: :created, location: @actividade }
      else
        format.html { render action: "new" }
        format.json { render json: @actividade.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /actividades/1
  # PUT /actividades/1.json
  def update
    @actividade = Actividade.find(params[:id])

    respond_to do |format|
      if @actividade.update_attributes(params[:actividade])
        format.html { redirect_to @actividade, notice: 'Actividade was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @actividade.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /actividades/1
  # DELETE /actividades/1.json
  def destroy
    @actividade = Actividade.find(params[:id])
    @actividade.destroy

    respond_to do |format|
      format.html { redirect_to actividades_url }
      format.json { head :ok }
    end
  end
end
