class Car
  def initialize(make, model_year, description)
    @make = make
    @model_year = model_year
    @description = description
    @lights = false
    @speed = 0
    @parking_brake = "false"
  end

  def description
    @description
  end

  def check_lights
    if @lights == false
      "Lights are off"
    else
      "Lights are on"
    end
  end

  def light_switch
    @lights = !@lights
  end

  def speed
    @speed
  end

  def speed_up
    if @parking_brake == "false"
    @speed += 10
  else
    @speed = 0
  end
  end

  def slow_down
    if @speed > 0
    @speed -= rand(1...10)
  end
    if @speed < 0
    @speed = 0
  end
  end

def parking_brake(value)
    @parking_brake = value
end

def show_park
  @parking_brake
end


  def display_car
    @make + " " + @model_year
  end
end
