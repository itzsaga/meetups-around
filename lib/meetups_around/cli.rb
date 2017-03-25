class MeetupsAround::CLI
    def call
        input_zipcode
        input_radius
        list_meetups
        again?
    end

    def input_zipcode
        puts 'What zip code would you like to see meetups for?'
        zip_code = gets.strip
        if /\b\d{5}\b/.match?(zip_code)
            nil
        else
            puts 'Please enter a five digit zip code.'
            input_zipcode
        end
    end

    def input_radius
        puts 'What radius around that zip code would you like to see meetups for?'
        radius = gets.strip
        if /\b\d{1,2}\b/.match?(radius)
            nil
        else
            puts 'Please enter a radius less than 100.'
            input_radius
        end
    end

    def list_meetups
        @meetups = MeetupsAround::Meetup.today
    end

    def again?
        puts 'Would you like to search again? [Y/N]'
        input = gets.strip.downcase
        puts input == 'y' || input == 'yes' ? call : 'Goodbye =)'
    end
end
