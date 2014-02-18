require "thor"

module ICAOCode
  class CLI < Thor
    desc "find TERM", "find ICAO codes by airline name"
    def find(name)
      result = ICAOCode.lookup(name)

      puts result.any? ? result.to_a.map { |r| r.join(": ") } : "No results"
    end
  end
end
