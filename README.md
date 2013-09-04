# Hintcss Rails

A tooltip library in CSS for your lovely websites

hint.css is written as a pure CSS resource using which you can create cool tooltips for your web app. It does not rely on JavaScript and rather uses data-* attribute, pseudo elements, content property and CSS3 transitions to create the tooltips. Also it uses BEM naming convention particularly for the modifiers.

Demo: http://kushagragour.in/lab/hint

The hintcss-rails project integrates Hint CSS v1.3.0 tooltip with the Rails' Asset Pipeline

**Current hintcss version = this gem's version

# Installation


Inside your Gemfile add the following line:

```ruby
group :assets do
  gem 'hintcss-rails'
end
```

Then run `bundle install` to install the gem.

## What now?

```bash
$ rails g hintcss:install



## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
