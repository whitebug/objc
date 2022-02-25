//
//  main.m
//  Month
//
//  Created by Aleksei Sodnomov on 20.02.2022.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        typedef enum {january = 1, february, march, april, may, june, july, august, september, october, november, december
        } Month;
        typedef int Day;
        Month amonth;
        Day days;
        
        NSLog(@"Enter month number: ");
        //scanf("%i", &amonth);
        amonth = march;
        
        switch (amonth)
        {
            case january:
            case march:
            case may:
            case july:
            case august:
            case october:
            case december:
                days = 31;
                break;
            case april:
            case june:
            case september:
            case november:
                days = 30;
                break;
            case february:
                days = 28;
                break;
            default:
                NSLog(@"bad month number");
                days = 0;
                break;
        }
        
        if (days != 0)
            NSLog(@"Number of days is %i", days);
        
        if (amonth == february)
            NSLog(@"... or 29 if it's a leap year");
        
        Month lastMonth = (Month) (amonth - 1);
        NSLog(@"last month: %u", lastMonth);
        }
    
    typedef unsigned int Shorts;
    
    Shorts w1, w2, w3;
    
    w1 = 0x15;
    w2 = 0x0c;
    
    w3 = w1 & w2;
    NSLog(@"result &: %x", w3);
    
    w3 = w1 | w2;
    NSLog(@"result |: %x", w3);
    
    w3 = ~1;
    NSLog(@"result before: %i and after flipping: %x", 1, w3);
    
    w2 = 0x03;
    NSLog(@"w2 before shift: %x", w2);
    w2 <<= 2;
    NSLog(@"w2 after the shift: %x", w2);
    
    return 0;
}
