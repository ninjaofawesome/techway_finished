class StaticPagesController < ApplicationController

  
  def new
    @client = Client.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @client }
    end
  end

  def create
    
    @client = Client.new(params[:client])

    # respond_to do |format|
      if @client.save
        if current_admin
          flash[:alert] = "Client successfully added."
          redirect_to '/admin' 
          
        else
          flash[:alert] = "Thanks!  We'll get back to you shortly."
          redirect_to '/'

        end
      else
        render action: "new" 
      end
      # if current_admin
      #   if @client.save 
      #   # redirect_to '/' 
      #   # debugger 
      #     format.html { redirect_to '/admin',  notice: 'Client was successfully created.' }
      #     format.json { render json: @client, status: :created, location: @client }
      #   else
      #      format.html { render action: "new" }
      #      format.json { render json: @client.errors, status: :unprocessable_entity }
      #   end
      # else
      #   if @client.save 
      #   # redirect_to '/' 
      #   # debugger 
      #     format.html { redirect_to '/',  notice: 'Client was successfully created.' }
      #     format.json { render json: @client, status: :created, location: @client }
      #   else
      #      format.html { render action: "new" }
      #      format.json { render json: @client.errors, status: :unprocessable_entity }
      #   end
      # end
    # end
  end


  def index
    @services = Service.all
    @reviews = Review.where(:active => true).limit(5)

  end

  def show
    @client = Client.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @client }
    end
  end

end


