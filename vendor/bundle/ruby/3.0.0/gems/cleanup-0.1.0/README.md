# CleanUp

Move and copy files and directories to appointed directories according defined conditions.

## Usage

Define your rules in `config/rules.rb` file.

Example:

```` ruby

CleanUp.define do
  move do
    source '~/Downloads'
    target '~/'

    file do
      extension 'mp3'
      dir 'Music'
    end

    file do
      extension 'avi', 'mov'
      dir 'Movies'
    end

    file do
      pattern 'report_'
      dir 'Documents/Reports'
    end

    file do
      extension 'torrent'
      dir '.Trash'
    end
  end
end

````

and run

    $ bin/cleanup

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/nickolai-sm/clean_up.

