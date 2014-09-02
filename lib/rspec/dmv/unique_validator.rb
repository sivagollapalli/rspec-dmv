module RSpec
  module Dmv
    module UniqueValidator
      def generate_unique_validation_test_cases(options)
        rspec.context "uniqueness" do
          matcher_options = []

          matcher_options << { method: :with_message, param: options[:message] } if options[:message].present?
          matcher_options << { method: :scoped_to, param: options[:scoped_to] } if options[:scoped_to].present?
          matcher_options << { method: :allow_nil } if options[:allow_nil].present?

          options[:attributes].each do |attribute|
            example do
              should validate_uniqueness_of(attribute.to_sym).
                call_methods( matcher_options )
            end
          end
        end
      end
    end
  end
end
