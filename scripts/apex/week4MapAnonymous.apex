map<string,decimal> currISOCodeAndExchangeRateMap = new map<string,decimal>();
currISOCodeAndExchangeRateMap.put('AUD', 0.73);
currISOCodeAndExchangeRateMap.put('CAD', 0.78);
currISOCodeAndExchangeRateMap.put('EUR', 1.13);
currISOCodeAndExchangeRateMap.put('NZD', 0.68);
currISOCodeAndExchangeRateMap.put('INR', 0.013);

system.debug('currencyMap ' + currISOCodeAndExchangeRateMap);
decimal currency1 = currISOCodeAndExchangeRateMap.get('AUD');
system.debug( 'Currency for AUD is ' + currency1);

boolean containsSAD = currISOCodeAndExchangeRateMap.containsKey('SAD');
system.debug( 'map contains SAD ISO ' +  containsSAD);

Set<String> moreThan1 = new Set<String> ();
Set<String> lessThan1 = new Set<String> ();

for (string eachCurrency : currISOCodeAndExchangeRateMap.keySet()){
    if(currISOCodeAndExchangeRateMap.get(eachCurrency) >=1){
        moreThan1.add(eachCurrency);
    }else{
        lessThan1.add(eachCurrency);
    }
}

system.debug('if conversion rate is more than 1 ' + moreThan1);
system.debug('if conversion rate is less than 1 ' + lessThan1);




