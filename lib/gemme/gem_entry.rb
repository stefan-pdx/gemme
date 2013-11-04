module Gemme
  class GemEntry
    def self.config(gem_name)
      gem_info = Gems.info(gem_name)

      if gem_info.is_a? Hash
        puts "gem '#{gem_name}', '~> #{gem_info["version"]}'"
      end
    end
  end
end
