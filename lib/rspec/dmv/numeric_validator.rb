module RSpec
  module Dmv
    module NumericValidator
      def generate_numeric_validation_test_cases(options)
        rspec.context "numericality" do
          matcher_options = []

          matcher_options << { method: :only_integer } if options[:only_integer].present?

          options[:attributes].each do |attribute|
            example do
              should validate_numericality_of(attribute.to_sym).call_methods( matcher_options )
            end
          end
        end
      end
    end
  end
end
