# rails-helper

Provides more helper methods for rails.

## Installation

Add this line to your application's Gemfile:

    gem 'rails-helper'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rails-helper

## Usage

### classes(*arg)
Generate css class names string.

#### *arg: `Hash`, `Array` or `String`
Hash keys will output class name if value is true. Array or string will output class names.

```Ruby
classes("class1", :class2 => true, :class3 => false)
```
Output

    "class1 class2"

It's useful for that conditional class names. Following is an example of haml:
```Haml
%li{:class => classes(:active => active?)
```
If true
```Html
<li class="active">
```
Or
```Html
<li class>
```
## License
The project is released under the [MIT license](http://www.opensource.org/licenses/MIT).

## Contact
The project's website is located at https://github.com/emn178/rails-helper  
Author: emn178@gmail.com
