public class Calculator {

    public static decimal dynamicCalculationMetdod(decimal x, decimal y, string operation){
        decimal calculation = 0;

        switch on operation {
            when 'add' {
                calculation = x+y;
                
            }
            when 'substraction' {
                calculation = x-y;
            }
            when'division' {
                calculation = x/y;
            }
            when 'multiplication' {
                calculation = x*y;
            }
            when else {
                system.debug( 'Please enter a valid operation');
            }
        }

        return calculation;
    }
    
}
