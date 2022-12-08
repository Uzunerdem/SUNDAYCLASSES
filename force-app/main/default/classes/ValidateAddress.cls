public  class ValidateAddress {
    public void validateHomeAddress(){
        string HouseName = 'Sol Dorado';
        string StreetName = 'Bosque Street';
        string CityName = 'Guadalajara';
        string StateName = ' Jalisco';
        string StateISO = ' JAL';
        string CountryName = 'Mexico';
        string CountryISO = 'MEX';

        integer lengthStreetName = StreetName.length();
        system.debug('The number of characters in the street name is: ' + lengthStreetName);

        boolean containsHouseName = StreetName.contains(HouseName);
        system.debug('Street name contains house name? ' + containsHouseName);

        boolean containsStateISO = StateName.contains(StateISO);
        system.debug( 'Street name contains the state ISO code? ' + containsStateISO);

        string convertUppertStateISO = StateISO.toUpperCase();
        system.debug(convertUppertStateISO);
        string convertUpperCountryISO = CountryISO.toUpperCase();
        system.debug(convertUpperCountryISO);
        string convertUpperCountryName = CountryName.toUpperCase();
        system.debug(convertUpperCountryName);
        string convertLowerCityName = CityName.toLowerCase();
        system.debug(convertLowerCityName);
        string convertLowerStateName = StateName.toLowerCase();
        system.debug(convertLowerStateName);

        string fullAddress = HouseName + ' ' +StreetName + ' ' + CityName+ ' ' + StateName + ' ' + CountryName;
        system.debug(fullAddress);




        
    

    }
}
    
