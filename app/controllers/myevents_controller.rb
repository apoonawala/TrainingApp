class MyeventsController < ApplicationController
  # GET /myevents
  # GET /myevents.json
  def index
    @myevents = Myevent.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @myevents }
    end
  end

  # GET /myevents/1
  # GET /myevents/1.json
  def show
    @myevent = Myevent.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @myevent }
    end
  end

  # GET /myevents/new
  # GET /myevents/new.json
  def new
    @myevent = Myevent.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @myevent }
    end
  end

  # GET /myevents/1/edit
  def edit
    @myevent = Myevent.find(params[:id])
  end

  # POST /myevents
  # POST /myevents.json
  def create
    @myevent = Myevent.new(params[:myevent])

    respond_to do |format|
      if @myevent.save
        format.html { redirect_to @myevent, notice: 'Myevent was successfully created.' }
        format.json { render json: @myevent, status: :created, location: @myevent }
      else
        format.html { render action: "new" }
        format.json { render json: @myevent.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /myevents/1
  # PUT /myevents/1.json
  def update
    @myevent = Myevent.find(params[:id])

    respond_to do |format|
      if @myevent.update_attributes(params[:myevent])
        format.html { redirect_to @myevent, notice: 'Myevent was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @myevent.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /myevents/1
  # DELETE /myevents/1.json
  def destroy
    @myevent = Myevent.find(params[:id])
    @myevent.destroy

    respond_to do |format|
      format.html { redirect_to myevents_url }
      format.json { head :no_content }
    end
  end
end
