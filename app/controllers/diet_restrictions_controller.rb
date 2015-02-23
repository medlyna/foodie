class DietRestrictionsController < ApplicationController
  before_action :set_diet_restriction, only: [:show, :edit, :update, :destroy]

  # GET /diet_restrictions
  # GET /diet_restrictions.json
  def index
    @diet_restrictions = DietRestriction.all
  end

  # GET /diet_restrictions/1
  # GET /diet_restrictions/1.json
  def show
  end

  # GET /diet_restrictions/new
  def new
    @diet_restriction = DietRestriction.new
  end

  # GET /diet_restrictions/1/edit
  def edit
  end

  # POST /diet_restrictions
  # POST /diet_restrictions.json
  def create
    @diet_restriction = DietRestriction.new(diet_restriction_params)

    respond_to do |format|
      if @diet_restriction.save
        format.html { redirect_to @diet_restriction, notice: 'Diet restriction was successfully created.' }
        format.json { render :show, status: :created, location: @diet_restriction }
      else
        format.html { render :new }
        format.json { render json: @diet_restriction.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /diet_restrictions/1
  # PATCH/PUT /diet_restrictions/1.json
  def update
    respond_to do |format|
      if @diet_restriction.update(diet_restriction_params)
        format.html { redirect_to @diet_restriction, notice: 'Diet restriction was successfully updated.' }
        format.json { render :show, status: :ok, location: @diet_restriction }
      else
        format.html { render :edit }
        format.json { render json: @diet_restriction.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /diet_restrictions/1
  # DELETE /diet_restrictions/1.json
  def destroy
    @diet_restriction.destroy
    respond_to do |format|
      format.html { redirect_to diet_restrictions_url, notice: 'Diet restriction was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_diet_restriction
      @diet_restriction = DietRestriction.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def diet_restriction_params
      params[:diet_restriction]
    end
end
