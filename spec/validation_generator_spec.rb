require 'spec_helper'

RSpec.describe RSpec::Dmv::ValidationGenerator do
  include RSpec::Dmv::ValidationGenerator

  describe "#expect_presence_validation_for(options)" do
    example "expects to merge 'type: :presence' to options hash" do
      options = { attributes: [:first_name] } 
      allow(options).to receive(:merge!).with(hash_including(type: :presence))

      expect_presence_validation_for options

      expect(options).to have_received(:merge!).with(hash_including(type: :presence))
    end
  end
end
