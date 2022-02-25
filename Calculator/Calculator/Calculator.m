//
//  Calculator.m
//  Calculator
//
//  Created by Aleksei Sodnomov on 22.02.2022.
//

#import "Calculator.h"

@implementation Calculator
{
    double accumulator;
}

-(void) setAccumulator:(double)value
{
    accumulator = value;
}
-(void) clear
{
    accumulator = 0;
}
-(double) accumulator
{
    return accumulator;
}
-(void) add:(double)value
{
    accumulator += value;
}
-(void) substract:(double)value
{
    accumulator -= value;
}
-(void) multiply:(double)value
{
    accumulator *= value;
}
-(void) divide:(double)value
{
    accumulator /= value;
}

@end
