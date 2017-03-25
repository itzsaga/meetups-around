class MeetupsAround::Meetup
    attr_accessor :time, :group, :event, :attending, :meetups
    attr_reader :todays_date

    def self.today
        @meetups = []
        @todays_date = 'Saturday, March 25'
        # I should return all the instances of today's meetups.
        puts "Today #{@todays_date} are the following meetups:"

        meetup_1 = self.new
        meetup_1.time = "2\:30PM"
        meetup_1.group = 'Developer Launchpad Nashville'
        meetup_1.event = 'Coding Jam'
        meetup_1.attending = '19 Developers going'

        meetup_2 = self.new
        meetup_2.time = "9\:00AM"
        meetup_2.group = 'Score Nashville Events, Networking and Workshops'
        meetup_2.event = 'Join us for a "Start your Business" workshop!'
        meetup_2.attending = '2 Members going'

        meetup_3 = self.new
        meetup_3.time = "10\:00AM"
        meetup_3.group = 'Paid to Speak Entrepreneurs'
        meetup_3.event = 'How To Get Your Speaking Career Started'
        meetup_3.attending = '18 Members Going'

        [meetup_1, meetup_2, meetup_3]
    end
end
