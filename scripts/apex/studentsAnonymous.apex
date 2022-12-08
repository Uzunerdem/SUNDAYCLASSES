Students st1 = new Students();
st1.generateReport();

Students st2 = new Students();
st2.firstName = 'Mary';
st2.lastName = 'Sunny';
st2.classYear = 2019;
st2.major = 'Physics';
system.debug(st2.generateReport());

Students st3 = new Students();
st3.firstName = 'John';
st3.lastName = 'Doe';
st3.classYear = 2002;
st3.major = 'Maths';
system.debug(st3.generateReport());