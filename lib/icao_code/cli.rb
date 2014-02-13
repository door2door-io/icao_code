require "thor"

module ICAOCode
  class CLI < Thor
    desc "find TERM", "find ICAO code by search term"
    def find(name)
      result = ICAOCode.lookup(name)

      puts result.any? ? result.to_a.map { |r| r.join(": ") } : "No results"
    end
  end
end
