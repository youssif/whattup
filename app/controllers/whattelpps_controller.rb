class WhattelppsController < ApplicationController
  # GET /whattelpps
  # GET /whattelpps.json
  def index
    @whattelpps = Whattelpp.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @whattelpps }
    end
  end

  # GET /whattelpps/1
  # GET /whattelpps/1.json
  def show
    @whattelpp = Whattelpp.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @whattelpp }
    end
  end

  # GET /whattelpps/new
  # GET /whattelpps/new.json
  def new
    @whattelpp = Whattelpp.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @whattelpp }
    end
  end

  # GET /whattelpps/1/edit
  def edit
    @whattelpp = Whattelpp.find(params[:id])
  end

  # POST /whattelpps
  # POST /whattelpps.json
  def create
    @whattelpp = Whattelpp.new(params[:whattelpp])

    respond_to do |format|
      if @whattelpp.save
        format.html { redirect_to @whattelpp, notice: 'Whattelpp was successfully created.' }
        format.json { render json: @whattelpp, status: :created, location: @whattelpp }
      else
        format.html { render action: "new" }
        format.json { render json: @whattelpp.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /whattelpps/1
  # PUT /whattelpps/1.json
  def update
    @whattelpp = Whattelpp.find(params[:id])

    respond_to do |format|
      if @whattelpp.update_attributes(params[:whattelpp])
        format.html { redirect_to @whattelpp, notice: 'Whattelpp was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @whattelpp.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /whattelpps/1
  # DELETE /whattelpps/1.json
  def destroy
    @whattelpp = Whattelpp.find(params[:id])
    @whattelpp.destroy

    respond_to do |format|
      format.html { redirect_to whattelpps_url }
      format.json { head :no_content }
    end
  end
end
