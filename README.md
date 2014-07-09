# RS-Paginator

``rs_pagination`` implements Bootstrap pagination for generic collections.


## Installation

```
$ gem install rs_paginator
```

```ruby
require 'rs_paginator'
```

or use ``gem 'rs_paginator'`` in your Gemfile when using bundler.


### Usage

Create a collection in your controller.
```ruby
collection = RsPaginator::Collection(objects, 1, 10, 27)
```

And use it inside your view.
```ruby
RsPaginator::Paginator.new(collection, self).render
```
