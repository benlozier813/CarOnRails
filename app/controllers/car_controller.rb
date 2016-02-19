class CarController < ApplicationController
  def new_car
    if !params.has_key?(:make) || params[:make].strip.empty? || !params.has_key?(:model_year) || params[:model_year].strip.empty? || !params.has_key?(:description) || params[:description].strip.empty?
      render "/car/new_car/"
    else
    @car1 = Car.new(params[:make], params[:model_year], params[:description])
    session[:car] = @car1.to_yaml
    redirect_to "/status/show/"
  end
end
end
