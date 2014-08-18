module RSpec
  module Dmv
    module ValidationGenerator

      def expect_presence_validation_for(options)
        options.merge!(type: :presence)

        GenerateValidation.new(self).generate options
      end

      class GenerateValidation < Struct.new(:rspec)
        include RSpec::Dmv::PresenceValidator

        def generate(options)
          case options[:type]
          when :presence
            generate_presence_validation_test_cases(options)
          end
        end
      end
    end
  end
end
