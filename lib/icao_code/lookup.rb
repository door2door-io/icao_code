require "csv"

module ICAOCode
  class Lookup
    def call(query)
      csv.inject({}) { |memo, row|
        name      = row[1]
        icao_code = row[4]

        memo[name] = icao_code if match?(name, query) && has_icao_code?(icao_code)
        memo
      }
    end

    def csv
      @csv ||= CSV.read("#{File.expand_path("../db", File.dirname(File.dirname(__FILE__)))}/airlines.dat")
    end

    def match?(name, query)
      name =~ %r(#{query})i
    end

    def has_icao_code?(icao_code)
      !icao_code.empty? && icao_code != "\\N"
    end
  end
end
