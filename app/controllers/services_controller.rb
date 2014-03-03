class ServicesController < ApplicationController
# before_filter :authenticate_admin!


  # GET /Services
  # GET /Services.json
  def index
    @services = Service.all
    
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @services }
    end
  end

  # GET /Services/1
  # GET /Services/1.json
  def show
    @service = Service.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @service }
    end
  end

  # GET /Services/new
  # GET /Services/new.json
  def new
    @service = Service.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @service }
    end
  end

  # GET /Services/1/edit
  def edit
    @service = Service.find(params[:id])
  end

  # POST /Services
  # POST /Services.json
  def create
    @service = Service.new(params[:service])

    respond_to do |format|
      if @service.save
        format.html { redirect_to '/services', notice: 'Service was successfully created.' }
        format.json { render json: @service, status: :created, location: @service }
      else
        format.html { render action: "new" }
        format.json { render json: @service.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /Services/1
  # PUT /Services/1.json
  def update

    @service = Service.find(params[:id])
  
    respond_to do |format|
      if @service.update_attributes(params[:service])
        format.html { redirect_to '/services', notice: 'Service was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @service.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /Services/1
  # DELETE /Services/1.json
  def destroy
    @service = Service.find(params[:id])
    @service.destroy

    respond_to do |format|
      format.html { redirect_to services_path }
      format.json { head :no_content }
    end
  end

  def client
    @services = Service.all
    
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @services }
    end
  end

end
