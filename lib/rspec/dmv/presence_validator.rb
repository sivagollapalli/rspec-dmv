module RSpec
  module Dmv
    module PresenceValidator
      def generate_presence_validation_test_cases(options)
        rspec.context "presence" do
          matcher_options = []

          matcher_options << { method: :with_message, param: options[:message] } if options[:message].present?

          options[:attributes].each do |attribute|
            example do
              should validate_presence_of(attribute.to_sym).call_methods( matcher_options )
            end
          end
        end
      end
    end
  end
end
