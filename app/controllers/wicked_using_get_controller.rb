class WickedUsingGetController < ApplicationController
  include Wicked::Wizard
  steps *MyModel.form_steps

  def new
    redirect_to wicked_using_get_path(steps.first)
  end

  def create
    @my_model = MyModel.new(filter_params(step))

    if @my_model.save
      redirect_to @my_model, notice: 'My model was successfully created.'
    else
      render_wizard @my_model
    end
  end

  def show
    @my_model = MyModel.new(basic_params(step))
    render_wizard
  end

  def update
    @my_model = MyModel.new(filter_params(step))
    if @my_model.valid?
      redirect_to wicked_using_get_path(@next_step, filter_params(step))
    else
      render_wizard @my_model
    end
  end

  private
    def basic_params(step=nil)
      permitted_attributes = [:first_name, :middle_name, :last_name, :suffix, :twitter_username, :github_username, :website, :city, :state, :zipcode, :street, :car_year, :car_maker, :car_model, :car_type]
      params.permit(permitted_attributes).merge(form_step: step)
    end

    def filter_params(step=nil)
      permitted_attributes = [:first_name, :middle_name, :last_name, :suffix, :twitter_username, :github_username, :website, :city, :state, :zipcode, :street, :car_year, :car_maker, :car_model, :car_type]
      params.require(:my_model).permit(permitted_attributes).merge(form_step: step)
    end
end