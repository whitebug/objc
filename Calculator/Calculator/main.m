//
//  main.m
//  Calculator
//
//  Created by Aleksei Sodnomov on 12.02.2022.
//

#import <Foundation/Foundation.h>
#import "Calculator.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        double      value1, value2;
        char        operator;
        BOOL        is_valid = YES;
        Calculator  *deskCalc = [[Calculator alloc] init];
        
        NSLog(@"Type in your expression.");
        scanf("%lf %c %lf", &value1, &operator, &value2);
        
        [deskCalc setAccumulator: value1];
        switch (operator) {
            case '+':
                [deskCalc add: value2];
                break;
            case '-':
                [deskCalc substract: value2];
                break;
            case '*':
                [deskCalc multiply: value2];
                break;
            case '/':
                if (value2 == 0) {
                    NSLog(@"It is not recommended to divide by zero");
                    is_valid = NO;
                }
                [deskCalc divide: value2];
                break;
            default:
                NSLog(@"You have used incorrect operator %c", operator);
                is_valid = NO;
                break;
        }
        
        if (is_valid) {
            NSLog(@"The result of the expression %.2f %c %.2f is %.2f", value1, operator, value2, [deskCalc accumulator]);
        } else {
            NSLog(@"Please try again");
        }
        
    }
    return 0;
}
