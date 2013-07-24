# Spree Email to Friend

[![Build Status](https://travis-ci.org/futhr/spree_email_to_friend.png?branch=2-0-stable)](https://travis-ci.org/futhr/spree_email_to_friend)
[![Dependency Status](https://gemnasium.com/futhr/spree_email_to_friend.png)](https://gemnasium.com/futhr/spree_email_to_friend)
[![Coverage Status](https://coveralls.io/repos/futhr/spree_email_to_friend/badge.png?branch=2-0-stable)](https://coveralls.io/r/futhr/spree_email_to_friend)

The Spree Email to Friend extension enables you to send the product reference to your friend via email.

## Installation

1. Add to your `Gemfile`
```ruby
gem 'spree_email_to_friend', github: 'futhr/spree_email_to_friend', branch: '2-0-stable'
```

2. Run `bundle install`

## Contributing

In the spirit of [free software][1], **everyone** is encouraged to help improve this project.

Here are some ways *you* can contribute:

* by using prerelease versions
* by reporting [bugs][2]
* by suggesting new features
* by writing [translations][4]
* by writing or editing documentation
* by writing specifications
* by writing code (*no patch is too small*: fix typos, add comments, clean up inconsistent whitespace)
* by refactoring code
* by resolving [issues][2]
* by reviewing patches

Starting point:

* Fork the repo
* Clone your repo
* Run `bundle install`
* Run `bundle exec rake test_app` to create the test application in `spec/test_app`
* Make your changes and follow this [Style Guide](https://github.com/thoughtbot/guides)
* Ensure specs pass by running `bundle exec rspec spec`
* Submit your pull request

Copyright (c) 2013 Jorge Calás Lozano, Roman Smirnov, Trung Lê, released under the [New BSD License][3]

[1]: http://www.fsf.org/licensing/essays/free-sw.html
[2]: https://github.com/futhr/spree_email_to_friend/issues
[3]: https://github.com/futhr/spree_email_to_friend/blob/2-0-stable/LICENSE.md
[4]: http://www.localeapp.com/projects/4931
