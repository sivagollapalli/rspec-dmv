{<img src="https://codeclimate.com/github/sivagollapalli/rspec-dmv/badges/gpa.svg" />}[https://codeclimate.com/github/sivagollapalli/rspec-dmv]

# Rspec::Dmv

Dynamically generate test cases for rails validations

## Installation

Add this line to your application's Gemfile:

    gem 'rspec-dmv'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rspec-dmv

## Usage

    class User < ActiveRecord::Base
        validates :first_name, :last_name, :email, presence: { message: "Profile info can't be blank"}
    end

    
    RSpec.describe User, type: :model do
        expect_presence_validation_for({attributes: [:first_name, :last_name, :email], message: "Profile info can't be blank" })
    end

## TODO

1. Needs to extend all kinds of rails validations.
2. Need to support mongoid as well as active record validations.

## Contributing

1. Fork it ( https://github.com/[my-github-username]/rspec-dmv/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request


## License

Copyright (c) 2014, Siva Gollapalli

Permission is hereby granted, free of charge, to any person
obtaining a copy of this software and associated documentation
files (the "Software"), to deal in the Software without
restriction, including without limitation the rights to use,
copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the
Software is furnished to do so, subject to the following
conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
OTHER DEALINGS IN THE SOFTWARE.
