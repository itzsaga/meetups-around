class MeetupsAround::Meetup
attr_reader :todays_date

    def self.today
        @todays_date = "Saturday, March 25"
        # I should return all the instances of today's meetups.
        puts "Today #{@todays_date} are the following meetups:"
        puts <<~HEREDOC
        1. 2:30PM - Developer Launchpad Nashville - Coding Jam - 19 Developers going
        2. 9:00AM - Score Nashville Events, Networking and Workshops - Join us for a "Start your Business" workshop! - 2 Members going
        3. 10:00AM - Paid to Speak Entrepreneurs - How To Get Your Speaking Career Started - 18 Members Going
        HEREDOC
    end
end
