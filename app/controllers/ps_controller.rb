class PsController < ApplicationController
  # GET /ps
  # GET /ps.json
  def index
    @ps = P.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @ps }
    end
  end

  # GET /ps/1
  # GET /ps/1.json
  def show
    @p = P.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @p }
    end
  end

  # GET /ps/new
  # GET /ps/new.json
  def new
    @p = P.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @p }
    end
  end

  # GET /ps/1/edit
  def edit
    @p = P.find(params[:id])
  end

  # POST /ps
  # POST /ps.json
  def create
    @p = P.new(params[:p])

    respond_to do |format|
      if @p.save
        format.html { redirect_to @p, notice: 'P was successfully created.' }
        format.json { render json: @p, status: :created, location: @p }
      else
        format.html { render action: "new" }
        format.json { render json: @p.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /ps/1
  # PUT /ps/1.json
  def update
    @p = P.find(params[:id])

    respond_to do |format|
      if @p.update_attributes(params[:p])
        format.html { redirect_to @p, notice: 'P was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @p.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ps/1
  # DELETE /ps/1.json
  def destroy
    @p = P.find(params[:id])
    @p.destroy

    respond_to do |format|
      format.html { redirect_to ps_url }
      format.json { head :ok }
    end
  end
end
