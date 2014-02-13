require "icao_code/version"
require "icao_code/lookup"
require "icao_code/cli"

module ICAOCode
  def self.lookup(name)
    Lookup.new.call(name)
  end
end
