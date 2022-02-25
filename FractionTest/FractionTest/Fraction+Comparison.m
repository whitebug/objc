//
//  Fraction+Comparison.m
//  FractionTest
//
//  Created by Aleksei Sodnomov on 22.02.2022.
//

#import "Fraction+Comparison.h"
#import "Fraction.h"

@implementation Fraction (Comparison)
-(BOOL) isEqualTo:(Fraction *)f
{
    [self reduce];
    [f reduce];
    if (self.denominator == f.denominator && self.numerator == f.numerator) {
        return YES;
    } else {
        return NO;
    }
}
-(int) compare:(Fraction *)f
{
    if ([self isEqualTo: f]) {
        return 0;
    }
    double receiver, second;
    receiver = (double) self.numerator / self.denominator;
    second = (double) f.numerator / f.denominator;
    if (receiver < second) {
        return -1;
    } else {
        return 1;
    }
}
@end
