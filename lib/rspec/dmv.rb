require "rspec/dmv/version"
require 'rspec/core'
require 'shoulda/matchers'

module RSpec
  module Dmv 
    def validate(model, validation, attributes)
      case validation.to_s
      when "presence"
        generate_presence_validations(model, attributes)
      end 
    end 

    def generate_presence_validations(model, attributes)
      attributes.each do |attribute|
        describe model do
          it do
            should validate_presence_of(attribute.to_sym)
          end 
        end 
      end 
    end 
  end 
end

RSpec.configure do |rspec|
  rspec.extend RSpec::Dmv
end

RSpec::SharedContext.send(:include, RSpec::Dmv)
