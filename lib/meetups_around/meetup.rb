class MeetupsAround::Meetup
    attr_accessor :time, :group, :event, :attending, :meetups
    attr_reader :todays_date

    def self.today
        html = open("https://www.meetup.com/find/events/?allMeetups=true&radius=#{MeetupsAround::CLI.input.radius.to_i}&userFreeform=#{MeetupsAround::CLI.input.zip_code.to_i}")
        doc = Nokogiri::HTML(html)
        meetups = []
        @todays_date = 'Saturday, March 25'
        today = Time.new

        # if today.strftime('%A, %B %-d') != doc.search("li.date-indicator").first.text.strip
        #     puts 'There are no more events today.'
        # else
        binding.pry
          # doc.css("ul.event-listing-container").first.each do |row|
          doc.css("ul.event-listing-container li.row.event-listing.clearfix.doc-padding").each do |row|
            meetup = self.new
            meetup.time = row.css("time").text
            meetup.group = row.css("div.text--labelSecondary").text.strip
            meetup.event = row.css("span").last.text.strip
            meetup.attending = row.css("div.attendee-count").text.strip.gsub("\n", " ").gsub(/\s+/, ' ')
            binding.pry
            meetups << meetup
        end
        meetups
      # end
    end
end

### Nokogiri ###
# iterator: doc.search("ul.event-listing-container li.row").first
# time -
# group -
# event -
# attending -
# doc.css("ul.event-listing-container time").first.text
# puts "Today #{@todays_date} are the following meetups:"
