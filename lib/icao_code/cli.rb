require "thor"

module ICAOCode
  class CLI < Thor
    desc "find TERM", "look up ICAO codes by airline name, or an airline by a given code"
    def find(name)
      result = ICAOCode.lookup(name)

      puts result.any? ? result.to_a.map { |r| r.join(": ") } : "No results"
    end
  end
end
