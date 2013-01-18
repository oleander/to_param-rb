# to_param

A one-liner solution for `ActiveRecord::Base#to_param`.

## Usage

### Default format

``` ruby
class User < ActiveRecord::Base
  # ...
  to_param :name
end

User.create(name: "Linus").to_param # => "1-linus"
```

### Custom format

``` ruby
class User < ActiveRecord::Base
  # ...
  to_param "Feel-lucky-:name"
end

User.create(name: "punk").to_param # => "feel-lucky-punk"
```

### Static value

``` ruby
class User < ActiveRecord::Base
  # ...
  to_param "static"
end

User.create(name: "Linus").to_param # => "static"
```

## Note

`ActiveRecord::Base.to_param` uses [#parameterize](http://apidock.com/rails/ActiveSupport/Inflector/parameterize) under the hood, so you don't have to worry about escaping.

## How do install

    [sudo] gem install to_param

## Requirements

*to_param* is tested in *OS X 10.8.2* using Ruby *1.9.2* and Rails *3.2*.

## License

*to_param* is released under the *MIT license*.