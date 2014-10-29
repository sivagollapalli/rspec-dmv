module RSpec
  module Dmv
    module ValidationGenerator
      def expect_presence_validation_for(options)
        options.merge!(type: :presence)

        GenerateValidation.new(self).generate options
      end

      def expect_unique_validation_for(options)
        options.merge!(type: :unique)

        GenerateValidation.new(self).generate options
      end

      def expect_length_validation_for(options)
        options.merge!(type: :length)

        GenerateValidation.new(self).generate options
      end

      class GenerateValidation < Struct.new(:rspec)
        include RSpec::Dmv::PresenceValidator
        include RSpec::Dmv::UniqueValidator
        include RSpec::Dmv::LengthValidator

        def generate(options)
          case options[:type]
          when :presence
            generate_presence_validation_test_cases(options)
          when :unique
            generate_unique_validation_test_cases(options)
          when :length
            generate_length_validation_test_cases(options)
          end
        end
      end
    end
  end
end
