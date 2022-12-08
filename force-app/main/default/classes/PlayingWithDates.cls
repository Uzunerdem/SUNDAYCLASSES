public  class PlayingWithDates {
    public void printDateOutput(){
        date todayDate = date.today();
        date date1 = date.newInstance(2789, 11, 5);
        date date2 = date.newInstance(1459, 3, 4);

        system.debug('Todays date is ' + todayDate);
        system.debug('Date1 is ' + date1);
        system.debug('Date2 is ' + date2);
        
        integer dayInt = 2;
        integer monthInt = 1;
        integer yearInt= 1983; 

        system.debug('Todays date is ' + todayDate);
        system.debug('Date1 is ' + date1);
        system.debug('Date2 is ' + date2);

        date date3 = date.newInstance(yearInt, monthInt, dayInt);
        system.debug('new date is ' + date3);
    }
    
}

