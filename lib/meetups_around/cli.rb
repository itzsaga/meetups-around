class MeetupsAround::CLI
  attr_reader :todays_date

  def call
    @todays_date = "Saturday, March 25"
    input
    list_meetups
  end

  def input
    puts "What zip code would you like to see meetups for?"
    zip_code = gets.strip
    if /\b\d{5}\b/.match?(zip_code)
      nil
    else
      puts "Please enter a five digit zip code."
      self.input
    end
    puts "What radius around that zip code?"
    radius = gets.strip
  end

  def list_meetups
    puts "Today #{todays_date} are the following meetups:"
    puts <<~HEREDOC
    1. 2:30PM - Developer Launchpad Nashville - Coding Jam - 19 Developers going
    2. 9:00AM - Score Nashville Events, Networking and Workshops - Join us for a "Start your Business" workshop! - 2 Members going
    3. 10:00AM - Paid to Speak Entrepreneurs - How To Get Your Speaking Career Started - 18 Members Going
    HEREDOC
  end

end
