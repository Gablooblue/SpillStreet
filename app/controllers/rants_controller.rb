class RantsController < ApplicationController
  before_action :set_organization, except: [:show]
  before_action :set_rant, only: [:edit, :update, :destroy]
  # GET /rants
  # GET /rants.json
  def index
    @rants = @organization.rants
  end

  # GET /rants/1
  # GET /rants/1.json
  def show
    @rant = Rant.find(params[:id])
  end

  # GET /rants/new
  def new
    @rant = Rant.new
  end

  # GET /rants/1/edit
  def edit
  end

  # POST /rants
  # POST /rants.json
  def create
    @rant = Rant.new(rant_params)

    respond_to do |format|
      if @rant.save
        format.html { redirect_to @rant.organization, notice: 'Rant was successfully created.' }
        format.json { render :show, status: :created, location: @rant.organization }
      else
        format.html { render :new }
        format.json { render json: @rant.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rants/1
  # PATCH/PUT /rants/1.json
  def update
    respond_to do |format|
      if @rant.update(rant_params)
        format.html { redirect_to @rant.organization, notice: 'Rant was successfully updated.' }
        format.json { render :show, status: :ok, location: @rant.organization }
      else
        format.html { render :edit }
        format.json { render json: @rant.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rants/1
  # DELETE /rants/1.json
  def destroy
    @rant.destroy
    respond_to do |format|
      format.html { redirect_to rants_url, notice: 'Rant was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rant
      @rant = @organization.rants.find(params[:id])
    end

    def set_organization
      @organization = Organization.find(params[:organization_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rant_params
      params.require(:rant).permit(:organization_id, :body)
    end
end
