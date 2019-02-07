When starting
```
bundle
bin/rails db:environment:set RAILS_ENV=development
rails db:create db:migrate db:seed
```

Totally reset DB
```
rails db:drop db:create db:migrate db:seed
```

Dev server
```
rails server
```

Try out things on backend
```
rails console
```

Making a new model
```
rails generate model SomeModelName
```
