list<account> list1 = AccConAndOppOperations.accList();
system.debug( ' list is ' + list1);

list<opportunity> list2 = AccConAndOppOperations.OppStatus('Web', 'Closed Lost');
system.debug('filtered list is ' + list2);
AccConAndOppOperations.oppAcc();

decimal sum1 = AccConAndOppOperations.oppAmount();
system.debug(sum1);

list<account> listAcc = AccConAndOppOperations.closedWonOpp('Closed Won');
system.debug(listAcc);

list<account> listAcc2 = AccConAndOppOperations.closedWonOpp('Value Proposition');
system.debug(listAcc2);

list<account> listAcc3 = AccConAndOppOperations.closedWonOpp2('Value Proposition');
system.debug(listAcc3);

list<account> listAcc4 = AccConAndOppOperations.accWithContact();
system.debug(listAcc4);

AccConAndOppOperations.conAndAccName('0016S00003GWBdUQAX');

AccConAndOppOperations.topopp();
