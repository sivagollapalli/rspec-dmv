module RSpec
  module Dmv
    module ValidationGenerator
      include RSpec::Dmv::PresenceValidator

      def expect_validation_in(model, options)
        generate_validations(model, options) 
      end

      def generate_validations(model, options)
        case options[:type]
        when :presence
          options[:attributes].each do |attribute|
            generate_presence_validation_test_cases(options, attribute)
          end 
        end
      end
    end
  end
end
