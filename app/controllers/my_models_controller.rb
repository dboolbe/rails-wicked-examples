class MyModelsController < ApplicationController
  before_action :set_my_model, only: [:show, :edit, :update, :destroy]

  # GET /my_models
  # GET /my_models.json
  def index
    @my_models = MyModel.all
  end

  # GET /my_models/1
  # GET /my_models/1.json
  def show
  end

  # GET /my_models/new
  def new
    @my_model = MyModel.new
  end

  # GET /my_models/1/edit
  def edit
  end

  # POST /my_models
  # POST /my_models.json
  def create
    @my_model = MyModel.new(my_model_params)

    respond_to do |format|
      if @my_model.save
        format.html { redirect_to @my_model, notice: 'My model was successfully created.' }
        format.json { render :show, status: :created, location: @my_model }
      else
        format.html { render :new }
        format.json { render json: @my_model.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /my_models/1
  # PATCH/PUT /my_models/1.json
  def update
    respond_to do |format|
      if @my_model.update(my_model_params)
        format.html { redirect_to @my_model, notice: 'My model was successfully updated.' }
        format.json { render :show, status: :ok, location: @my_model }
      else
        format.html { render :edit }
        format.json { render json: @my_model.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /my_models/1
  # DELETE /my_models/1.json
  def destroy
    @my_model.destroy
    respond_to do |format|
      format.html { redirect_to my_models_url, notice: 'My model was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_my_model
      @my_model = MyModel.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def my_model_params
      params.require(:my_model).permit(:first_name, :middle_name, :last_name, :suffix, :twitter_username, :github_username, :website, :city, :state, :zipcode, :street, :car_year, :car_maker, :car_model, :car_type)
    end
end
