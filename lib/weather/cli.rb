class Weather::CLI

  # def initialize
  #  self.start
  # end

  def start
    puts ""
    puts "              | Welcome to Weather |                 "
    puts ""
    # zip = self.get_zip
    zip = Weather::WeatherMain.zip_code
    weather_data = Weather::Scraper.scrape_weather(zip)
    weather_list(weather_data)
  end



  # def self.get_zip
  #   needs to get the users zip code and pass that to the scraper. needs to check is zip code is valid.
  #   input = ""
  #   retreived_value_zip = false
  #   while retreived_value_zip == false
  #    puts "Please enter your zip code to see the weather in your area."
  #    input = gets.strip
  #    zip = input.to_i  #(00704,99950)
  #    if zip.between?(00704,99950) == false
  #      puts "That is not a valid zip code. Please try again."
  #    else
  #      retreived_value_zip = true
  #    end
  #  end
  #  zip
  # end

  def weather_list(weather_data)
    input = ""
    while true
      puts ""
      puts "      Please type in the number that corresponds to the weather condition that you would like to view.
      To return to the beginning, please type 10.
      To exit, please type 11."
      puts ""
      puts "            1. Temperature
            2. Current conditions
            3. Feels like Temperature
            4. Wind
            5. Humidity
            6. Dew Point
            7. Pressure
            8. Visibility
            9. Weather Summary
           10. Return to the Start
           11. Exit"

      input = gets.strip
      if input.to_i.between?(1,11) == false
        puts "That is an invalid entry. Please choose again."
      else
       case input
# instance
      when "1"
        puts "As of #{weather_data.time}, the current temperature at zip code #{weather_data.zip} is #{weather_data.temp}."
      when "2"
        puts "The current weather condition is #{weather_data.condition}, as of #{weather_data.time}."
      when "3"
        puts "The temperature #{weather_data.feels_temp}."
      when "4"
        puts "The current wind direction and speed are #{weather_data.wind.strip}."
      when "5"
        puts "The humidity is #{weather_data.humidity}."
      when "6"
        puts "The dew point is #{weather_data.dew_point}."
      when "7"
        puts "The current pressure is #{weather_data.pressure.strip}."
      when "8"
        puts "#{weather_data.visibility} is the current visibility in #{weather_data.zip}."
      when "9"
        puts "As of #{weather_data.time}, the current weather in your zip code #{weather_data.zip} is #{weather_data.temp} and #{weather_data.condition}. Although, it #{weather_data.feels_temp}. The wind is #{weather_data.wind.strip} and the current humidity is #{weather_data.humidity}. The dew point temp is #{weather_data.dew_point}. #{weather_data.visibility} is the distance you can see today and the pressure is #{weather_data.pressure.strip}."
      when "10"
        puts "Okay, going to get a new zip code"
        return start
      else "11"
        puts "Thank you for using Weather. Goodbye."
        return false
      end
    end
  end
end

# exited = false
# while exited == false
#   exited = mycli.start
# end

# weather_cli = Cli.new
#  should_run = true
#  while should_run == true
#    should_run = weather_cli.start
#  end
end
