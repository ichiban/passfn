# Passfn

`passfn` provides a CLI command to generate a password from a domain and a master passphrase.

## Caveat

I'm not a security professional.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'passfn'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install passfn

## Usage

Assume the master passphrase is:
```
Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
```

### Without any options

```sh
$ passfn
domain? example.com
passphrase? 
[zB#S2^xBT;@q%.X??ec5s"&?5\%IKaN
```

### With domain option

```sh
$ passfn --domain=example.com
passphrase? 
[zB#S2^xBT;@q%.X??ec5s"&?5\%IKaN
```

### Copy to clipboard

```sh
$ passfn --domain=example.com --copy
passphrase? 
password for example.com is copied into clipboard
$ pbpaste # I'm using Mac OSX
[zB#S2^xBT;@q%.X??ec5s"&?5\%IKaN
```

## Contributing

1. Fork it ( https://github.com/ichiban/passfn/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
