OperationsHelper ln = new OperationsHelper();
ln.largestOutOfTwoNumbers(3.9, 3.5);
ln.largestOutOfTwoNumbers(4.5, 5);
system.debug('largest number of the two is ' + ln.largestOutOfTwoNumbers(3.9, 3.5));
system.debug('largest number of the two is ' + ln.largestOutOfTwoNumbers(4.5, 5));

decimal n1 = OperationsHelper.smallestOutOfThreeNumbers(8, 7.5, 12);
system.debug( 'smallest number is '+ n1);

integer sum1 = OperationsHelper.sumOfPositiveNumbers(6);
system.debug('toplam '+ sum1);
integer sum2 =OperationsHelper.sumOfPositiveNumbers(-6);
system.debug('toplam '+ sum2);