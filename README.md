# ToParam

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
  to_param ":id-:awesome-name"
end

User.create(name: "Linus", awesome: true).to_param # => "1-true-linus"
```

### Static value

``` ruby
class User < ActiveRecord::Base
  # ...
  to_param "static"
end

User.create(name: "Linus").to_param # => "static"
```

## How do install

    [sudo] gem install to_param

## Requirements

*ToParam* is tested in *OS X 10.8.2* using Ruby *1.9.2* and Rails *3.2*.

## License

*ToParam* is released under the *MIT license*.