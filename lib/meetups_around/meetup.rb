class MeetupsAround::Meetup
attr_accessor :time, :group_name, :event_name, :attending
attr_reader :todays_date

    def self.today
        @meetups = []
        @todays_date = "Saturday, March 25"
        # I should return all the instances of today's meetups.
        puts "Today #{@todays_date} are the following meetups:"
        # puts <<~HEREDOC
        # 1. 2:30PM - Developer Launchpad Nashville - Coding Jam - 19 Developers going
        # 2. 9:00AM - Score Nashville Events, Networking and Workshops - Join us for a "Start your Business" workshop! - 2 Members going
        # 3. 10:00AM - Paid to Speak Entrepreneurs - How To Get Your Speaking Career Started - 18 Members Going
        # HEREDOC

        meetup_1 = self.new
        meetup_1.time = 2:30PM
        meetup_1.group_name = Developer Launchpad Nashville
        meetup_1.event_name = Coding Jam
        meetup_1.attending = 19 Developers going

        meetup_2 = self.new
        meetup_2.time = 9:00AM
        meetup_2.group_name = Score Nashville Events, Networking and Workshops
        meetup_2.event_name = Join us for a "Start your Business" workshop!
        meetup_2.attending = 2 Members going

        meetup_3 = self.new
        meetup_3.time = 10:00AM
        meetup_3.group_name = Paid to Speak Entrepreneurs
        meetup_3.event_name = How To Get Your Speaking Career Started
        meetup_3.attending = 18 Members Going

        @meetups
    end
end
