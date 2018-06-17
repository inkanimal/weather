class Weather::WeatherMain

  @@all = []

  attr_accessor :temp, :condition, :feels_temp, :wind, :humidity, :dew_point, :pressure, :visibility, :zip, :time

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
    @time = time
    self.class.all << self
  end

  def self.all
    @@all
  end

  def self.zip_code
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
