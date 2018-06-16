class Weather::WeatherMain


  @@all = []

  attr_accessor :temp, :condition, :feels_temp, :wind, :humidity, :dew_point, :pressure, :visibility, :zip


  def initialize
    @temp = temp
    @condition = condition
    @feels_temp = temp
    @wind = wind
    @humidity = humidity
    @dew_point = dew_point
    @pressure = pressure
    @visibility = visibility
    @zip = zip
    
  end

  def self.get_zip
   input = ""
   retreived_value_zip = false
   while retreived_value_zip == false
    puts "Please enter your zip code to see the weather in your area."
    input = gets.strip
    zip = input.to_i  #(00704,99950)
    if zip.between?(00704,99950) == false
     puts "That is not a valid zip code. Please try again."
    else
     retreived_value_zip = true
    end
   end
  zip
 end

  def weather_summary
    return "The current weather in your area is #{get_temp} and #{get_condition}. Although, it #{get_feels}. The wind is #{get_wind.strip} and the current humidity is #{get_hum}. The dew point temp is #{get_dew}. #{get_vis} is the distance you can see today and the pressure is #{get_pressure.strip}."
  end
end

  # def self.all
  #   @@all
  # end
  #
  # def save
  #   @@all << self
  # end

  # def initialize(input = "")
  #   @input = input
  # end
  #
  # def zip_code(input)
  #   input = gets.strip
  #   zip = input.to_i
  # end
  #
  # def zip_valid?(zip_code)
  #   if zip_code.between?(00704,99950) == false
  #     puts "That is not a valid zip code. Please enter another zip code."
  #   else
  #     zip_code
  #   end
  # end
