public class OperationsHelper2 {

    public static decimal Sum(List<decimal> listOfDecimals){

        decimal total;
        if (!listOfDecimals.isEmpty()) {
            total=0;
           for (decimal eachNum : listOfDecimals){
            total+=eachNum;
            
        }
       
        }else{
            system.debug('please provide values to the operation');
        }
        return total;
    }

    public static decimal average(list<decimal> listAverage) {
        decimal average;
        decimal total;
        
        if (!listAverage.isEmpty()) {
             total=0;
            
            for (decimal eachNum: listAverage) {
                total+=eachNum;
                
            }
            average = total / listAverage.size();
        }else{
                system.debug('please provide values to the operation');
            }
            return average;
        }

        public static decimal highest(list<decimal> highestDecimal){
            decimal biggerNum;
            if (!highestDecimal.isEmpty()) {

                biggerNum=highestDecimal[0];
                for (decimal eachNum : highestDecimal) {

                    if (eachNum > biggerNum) {
                        biggerNum=eachNum;
                        
                    }

                    system.debug( 'liste elemani ' + eachNum +'en buyuk deger '+ biggerNum);
                    
                }else{
                    system.debug('please provide values to the operation');
                }

                
            
            }

            return biggerNumber;
        }
            
}
        



