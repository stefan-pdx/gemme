## Gemme ##

A simple command-line utility to generate Gemfile entries. For example:

```
  > gemme rails
    gem 'rails', '~> 4.0.1'
```

You can use Gemme to get multiple gems at once as well:

```
  > gemme rails pg
    gem 'rails',  '~> 4.0.4'
    gem 'pg',     '~> 0.17.1'
```

You can easily use this in Vim by executing `:r!gemme <gem name> <gem name>`.
