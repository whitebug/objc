//
//  main.m
//  Loops
//
//  Created by Aleksei Sodnomov on 11.02.2022.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int accum, number;
        
        accum = 1;
                
        NSLog(@"provide your number");
        scanf("%i", &number);
        NSLog(@"%i", number);
        
        for(; number != 0; number--)
        {
            if (number == 1) {
                continue;
            }
            accum *= number;
            NSLog(@"%-2i, %3i", number, accum);
        }
        NSLog(@"the final product is %i", accum);
    }
    return 0;
}
