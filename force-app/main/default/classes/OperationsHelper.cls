public class OperationsHelper {
    public decimal  largestOutOfTwoNumbers(decimal num1, decimal num2){
        if (num1>=num2) {
            return num1;    
        }else{
            return num2;
        }
    }
    
    public static decimal smallestOutOfThreeNumbers(decimal a, decimal b, decimal c){
        if (a<=b && a<=c) {
            return a;
        }else if(b<=a && b<=c){
            return b;
        }else{
            return c;
        }
    }

    public static integer sumOfPositiveNumbers(integer n) {
        integer sum;
        if (n < 0) {
            
            system.debug('We are not calculating negative numbers!');    
        }else{
            sum=0;
            for (Integer i = 0; i < n; i++) {
                sum +=i;
            }
            
        }
        return sum;
    }
}
