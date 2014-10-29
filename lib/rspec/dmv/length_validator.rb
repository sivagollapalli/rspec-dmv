module RSpec
  module Dmv
    module LengthValidator
      def generate_length_validation_test_cases(options)
        rspec.context "length" do
          matcher_options = []

          matcher_options << { method: :is_at_least, param: options[:min] } if options[:min].present?
          matcher_options << { method: :with_message, param: options[:message] } if options[:message].present?
          matcher_options << { method: :is_at_most, param: options[:max] } if options[:max].present?

          options[:attributes].each do |attribute|
            example do
              should ensure_length_of(attribute.to_sym).call_methods( matcher_options )
            end
          end
        end
      end
    end
  end
end
