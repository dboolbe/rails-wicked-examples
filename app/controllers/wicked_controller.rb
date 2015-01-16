class WickedController < ApplicationController
  include Wicked::Wizard
  steps *MyModel.form_steps

  def create
    @my_model = MyModel.new
    @my_model.save(validate: false)
    redirect_to wicked_path(steps.first, :my_model_id => @my_model.id)
  end

  def show
    @my_model = MyModel.find(params[:my_model_id])
    render_wizard
  end

  def update
    @my_model = MyModel.find(filter_params[:id])
    if @my_model.update(filter_params(step))
      redirect_to wicked_path(@next_step, :my_model_id => filter_params[:id])
    else
      render_wizard @my_model
    end
  end

  private
    def filter_params(step=nil)
      permitted_attributes = [:id, :first_name, :middle_name, :last_name, :suffix, :twitter_username, :github_username, :website, :city, :state, :zipcode, :street, :car_year, :car_maker, :car_model, :car_type]
      params.require(:my_model).permit(permitted_attributes).merge(form_step: step)
    end
end