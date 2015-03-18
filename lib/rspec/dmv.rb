require "rspec/dmv/extend_ruby"
require "rspec/dmv/version"
require "rspec/dmv/presence_validator"
require "rspec/dmv/numeric_validator"
require "rspec/dmv/unique_validator"
require "rspec/dmv/length_validator"
require "rspec/dmv/validation_generator"
require 'rspec/core'
require 'shoulda/matchers'

module RSpec
  module Dmv 
    include RSpec::Dmv::ValidationGenerator
  end 
end

RSpec.configure do |rspec|
  rspec.extend RSpec::Dmv
end

RSpec::SharedContext.send(:include, RSpec::Dmv)
