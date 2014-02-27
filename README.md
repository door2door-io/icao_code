# ICAOCode

Automate finding ICAO codes, using OpenFlights data.

http://openflights.org/data.html

## Installation

After cloning repository:

    $ bundle
    $ bundle exec rake install

## Usage

Search ICAO codes by given airline name (also partial) or code:

CLI: 

    $ icao_code find lufthansa
    Lufthansa: DLH
    Lufthansa Cargo: GEC
    Lufthansa CityLine: CLH
    Lufthansa Technik: LHT
    
    $ iata_code find DLH
    Lufthansa: DLH
    
Plain Ruby:

```ruby
ICAOCode.lookup("lufthansa") // => {"Lufthansa"=>"DLH", "Lufthansa Cargo"=>"GEC", "Lufthansa CityLine"=>"CLH", "Lufthansa Technik"=>"LHT"}
```
