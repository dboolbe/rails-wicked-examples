json.array!(@my_models) do |my_model|
  json.extract! my_model, :id, :first_name, :middle_name, :last_name, :suffix, :twitter_username, :github_username, :website, :city, :state, :zipcode, :street, :car_year, :car_maker, :car_model, :car_type
  json.url my_model_url(my_model, format: :json)
end
