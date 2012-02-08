class AlumnosController < ApplicationController
     http_basic_authenticate_with :name => "deportivas", :password => "cine", :except => :index, :except => :show
  before_filter :get_actividades
  # GET /alumnos
  # GET /alumnos.json
  def index
    @alumnos = Alumno.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @alumnos }
    end
  end

  # GET /alumnos/1
  # GET /alumnos/1.json
  def show
    @alumno = Alumno.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @alumno }
    end
  end

  # GET /alumnos/new
  # GET /alumnos/new.json
  def new
    @alumno = Alumno.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @alumno }
    end
  end

  # GET /alumnos/1/edit
  def edit
    @alumno = Alumno.find(params[:id])
  end

  # POST /alumnos
  # POST /alumnos.json
  def create
    @alumno = Alumno.new(params[:alumno])

    respond_to do |format|
      if @alumno.save
        format.html { redirect_to @alumno, notice: 'Alumno was successfully created.' }
        format.json { render json: @alumno, status: :created, location: @alumno }
      else
        format.html { render action: "new" }
        format.json { render json: @alumno.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /alumnos/1
  # PUT /alumnos/1.json
  def update
    @alumno = Alumno.find(params[:id])

    respond_to do |format|
      if @alumno.update_attributes(params[:alumno])
        format.html { redirect_to @alumno, notice: 'Alumno was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @alumno.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /alumnos/1
  # DELETE /alumnos/1.json
  def destroy
    @alumno = Alumno.find(params[:id])
    @alumno.destroy

    respond_to do |format|
      format.html { redirect_to alumnos_url }
      format.json { head :ok }
    end
  end
protected
  def get_actividades
    @actividades = Actividade.all
  end
end
