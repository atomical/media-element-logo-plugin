MediaElement Logo Plugin

This gem displays a logo on the scrubber bar.  Some of the code here is derived from [MediaElement.js Plugins](https://github.com/hark/mediaelement-plugins).

## Installation

Add this line to your application's Gemfile:

    gem 'media-element-logo-plugin'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install media-element-logo-plugin

## Usage

  Add javascript plugin and styling to the page:

  ```
    <%= javascript_include_tag 'me-logo' %>
    <%= stylesheet_link_tag 'me-logo' %>
  ```

  Add these options to MediaElement:

  ```
  logoAction: 'popup',
  logoURL: 'http://www.something.com',
  logoTitle: 'View on Something.com'
  ```
## Contributing

1. Fork it ( https://github.com/[my-github-username]/media-element-logo-plugin/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
