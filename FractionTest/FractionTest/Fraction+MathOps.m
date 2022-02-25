//
//  Fraction+MathOps.m
//  FractionTest
//
//  Created by Aleksei Sodnomov on 21.02.2022.
//

#import "Fraction+MathOps.h"
#import "Fraction.h"

@implementation Fraction (MathOps)

-(Fraction *) add:(Fraction *)f
{
    Fraction *result = [[Fraction alloc] init];

    result.numerator = self.numerator * f.denominator + self.denominator * f.numerator;
    result.denominator = self.denominator * f.denominator;
    return result;
}

-(Fraction *) substract:(Fraction *)f
{
    Fraction *result = [[Fraction alloc] init];

    result.numerator = self.numerator * f.denominator - self.denominator * f.numerator;
    result.denominator = self.denominator * f.denominator;
    return result;
}

-(Fraction *) multiply:(Fraction *)f
{
    Fraction *result = [[Fraction alloc] init];

    result.numerator = self.numerator * f.numerator;
    result.denominator = self.denominator * f.denominator;
    return result;
}

-(Fraction *) divide:(Fraction *)f
{
    Fraction *result = [[Fraction alloc] init];

    result.numerator = self.numerator * f.denominator;
    result.denominator = self.denominator * f.numerator;
    return result;
}
-(Fraction *) invert
{
    Fraction * result = [[Fraction alloc] init];
    result.denominator = self.numerator;
    result.numerator = self.denominator;
    return result;
}

@end
