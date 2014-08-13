module RSpec
  module Dmv
    module PresenceValidator
      def generate_presence_validation_test_cases(options, attribute)
        context "presence" do
          example do
            if options[:message].nil?
              should validate_presence_of(attribute.to_sym)
            else
              should validate_presence_of(attribute.to_sym).with_message(options[:message])
            end
          end
        end

      end
    end
  end
end
