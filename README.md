# Microformats::Helper


## Description

Microformats helper that supports nesting.

Latest stable version is 5.0

First usable iteration is VERSION 0.2.6


## Installation

Add this line to your application's Gemfile:

    gem 'micro_helper'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install micro_helper

## Microformat usage

    microformats(container,props,child)

or

    generate_microformats(container,props,child) [Depreciated]

which gives a hidden span with all the microformat content you need

### parameter examples:

    container = { itemprop: nil, itemtype: "Product" }

    props = {

      name: { value: "Executive Anvil"},
      brand: { value: "ACME" },
      category: { content: "Hardware > Tools > Anvils", value: "Anvils"},
      description: { value: "Sleeker than ACME's Classic Anvil..." }
    }

    child = generate_microformats(child_container,child_props)


## Usage for open graph

    og_for("type","content")

which gives

    content_for do
      <meta property="og:type" content="content">
    end

you can also not use content_for:

    og_tag("type","content")

there is also an optional namespace:

    og_tag("type","content","fb")

which gives

    <meta property="fb:type" content="content">

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
