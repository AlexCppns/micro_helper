# Microformats::Helper

Usage:

generate_microformats(container,props,child)

parameter examples:

container = { itemprop: nil, itemtype: "Product" }

props = {
  name: { value: "Executive Anvil"},
  brand: { value: "ACME" },
  category: { content: "Hardware > Tools > Anvils", value: "Anvils"},
  description: { value: "Sleeker than ACME's Classic Anvil..." }

}

child = generate_microformats(child_container,child_props)


## Installation

Add this line to your application's Gemfile:

    gem 'microformats-helper'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install microformats-helper

## Usage

TODO: Write usage instructions here

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
