class MyModel < ActiveRecord::Base
  attr_accessor :form_step

  cattr_accessor :form_steps do
    %w(profile social_profile address vehicle verify)
  end

  with_options :if => -> { required_for_step?(:profile) } do |step|
    step.validates :first_name, :presence => true
    step.validates :middle_name, :presence => true
    step.validates :last_name, :presence => true
    # step.validates :suffix, :presence => true
  end

  with_options :if => -> { required_for_step?(:social_profile) } do |step|
    step.validates :twitter_username, :presence => true
    step.validates :github_username, :presence => true
    step.validates :website, :presence => true
  end

  with_options :if => -> { required_for_step?(:address) } do |step|
    step.validates :city, :presence => true
    step.validates :state, :presence => true
    step.validates :zipcode, :presence => true, :numericality => true
    step.validates :street, :presence => true
  end

  with_options :if => -> { required_for_step?(:vehicle) } do |step|
    step.validates :car_year, :presence => true, :numericality => true
    step.validates :car_maker, :presence => true
    step.validates :car_model, :presence => true
    step.validates :car_type, :presence => true
  end

  private
    def required_for_step?(step)
      # All fields are required if no form step is present
      return true if form_step.nil?

      # All fields from previous steps are required if the
      # step parameter appears before or we are on the current step
      self.form_steps.index(step.to_s) <= self.form_steps.index(form_step)
    end
end
