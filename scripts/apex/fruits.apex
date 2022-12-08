set<string> fruitSet = new set<string>{'apple', 'orange', 'strawberry', 'grape'};

for (string eachFruit: fruitSet){
    system.debug(eachFruit);
}

integer fruitSize = fruitSet.size();
system.debug( ' size of the fruitset is '+ fruitSize);

fruitSet.add('Apricot');
system.debug('updated set is ' + fruitSet );

boolean containsApricot = fruitSet.contains('Apricot');
system.debug( 'Set contains Apricot --> '+ containsApricot);

boolean isSetEmpty = fruitSet.isEmpty();
system.debug(' Is fruit set empty --> ' + isSetEmpty);
