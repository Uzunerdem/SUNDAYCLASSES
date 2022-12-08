
List<String> colorsList = new List<String>{ 'white' , 'red' , 'black' ,'pink' , 'green'};
// string[] colorsList = new string[] { 'white' , 'red' , 'black' ,'pink' , 'green'};
system.debug(' My colors are ' + colorsList);
system.debug(' Size of my list is ' + colorsList.size());
boolean isRed = colorsList.contains('red');
system.debug(' List contains red? ' + isRed);

string lastOne = colorsList.get(colorsList.size()-1).toUpperCase();
system.debug('Upper case last one is ' + lastOne);

string fourthOne = colorsList.get((3)).toUpperCase();
system.debug('Upper case FOURTH one is ' + fourthOne);

List<string> colorCodeList = new List<string>{'#FFFFFF', ' #FF0000', '#000000' ,'#FFC0CB', '#00FF00'};
system.debug('Color codes are ' + colorCodeList); 
boolean isEqual = colorsList.equals(colorCodeList);
system.debug (' Are two lists equal? ' + isEqual);

List<string> mergeTwoList = new List<string>();
mergeTwoList.addAll(colorsList);
mergeTwoList.addAll(colorCodeList);
system.debug('merged list is ' + mergeTwoList);
