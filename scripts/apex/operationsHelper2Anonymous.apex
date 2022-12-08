list<decimal> newList = new list<decimal>{11.2, 55.4, 66.7, 45, 89};

decimal finalSum = OperationsHelper2.Sum(newList);
system.debug('Sum of newList is ' + finalSum);

decimal finalAverage = OperationsHelper2.average(newList);
system.debug( 'Average of newList is ' + finalAverage);
