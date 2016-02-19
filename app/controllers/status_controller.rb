class StatusController < ApplicationController

  def show
    @car1 = YAML.load(session[:car])
  end

  def light_button
    @car1 = YAML.load(session[:car])
    @car1.light_switch
    session[:car] = @car1.to_yaml
    redirect_to "/status/show"
      end


  def accelerate
    @car1 = YAML.load(session[:car])
    @car1.speed_up
    session[:car] = @car1.to_yaml
    redirect_to "/status/show"
  end

  def brake
    @car1 = YAML.load(session[:car])
    @car1.slow_down
    session[:car] = @car1.to_yaml
    redirect_to "/status/show"
  end

def parking_brake
  @car1 = YAML.load(session[:car])
  @car1.parking_brake(params[:parking_brake])
  session[:car] = @car1.to_yaml
  redirect_to "/status/show"
end



end
