require 'clean_up/version'

require 'clean_up/rules'
require 'clean_up/conditions'
require 'clean_up/folder'
require 'clean_up/folders_rules'
require 'clean_up/option_values'

module CleanUp
  IGNORED_ENTRIES = %w(. .. .DS_Store .localized).freeze

  class << self
    def define(&block)
      @folders_rules = FoldersRules.collect(&block)
    end

    def folders_rules
      @folders_rules || []
    end

    def check
      folders_rules.each do |folder_rules|
        dir_entries(folder_rules.source).each do |entry|
          if File.directory?(entry)
            folder_rules.process_directory(entry)
          else
            folder_rules.process_file(entry)
          end
        end
      end
    end

    def dir_entries(folder)
      (Dir.entries(folder) - IGNORED_ENTRIES).map do |entry|
        File.expand_path(entry, folder)
      end
    end
  end
end
