class MeetupsAround::Meetup
    attr_accessor :time, :group, :event, :attending, :meetups

    def self.today
        html = open("https://www.meetup.com/find/events/?allMeetups=true&radius=#{MeetupsAround::CLI.input.radius.to_i}&userFreeform=#{MeetupsAround::CLI.input.zip_code.to_i}")
        doc = Nokogiri::HTML(html)
        meetups = []
        today = Time.new
        @@todays_date = today.strftime('%A, %B %-d')

        if today.strftime('%A, %B %-d') != doc.search('li.date-indicator').first.text.strip
            puts 'There are no more events today.'
        else
            doc.css('ul.event-listing-container li.row.event-listing.clearfix.doc-padding').each do |row|
                meetup = new
                meetup.time = row.css('time').text
                meetup.group = row.css('div.text--labelSecondary').text.strip
                meetup.event = row.css('span').last.text.strip
                meetup.attending = row.css('div.attendee-count').text.strip.tr("\n", ' ').gsub(/\s+/, ' ')
                meetups << meetup
            end
            meetups
        end
    end

    def self.todays_date
        @@todays_date
    end
end
