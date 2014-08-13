module RSpec
  module Dmv
    module ValidationGenerator
      def expect_validation_in(model, options)
        generate_validations(model, options) 
      end

      def generate_validations(model, options)
        options[:attributes].each do |attribute|
          describe model do
            example do
              should validate_presence_of(attribute.to_sym)
            end 
          end 
        end 
      end
    end
  end
end
