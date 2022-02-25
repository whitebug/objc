//
//  Fraction.m
//  FractionTest
//
//  Created by Aleksei Sodnomov on 12.02.2022.
//

#import "Fraction.h"

static int gCounter;

//@interface Fraction ()
//-(void) reduce;
//@end

@implementation Fraction

// if we would open @synthesize, we would need to rename internal variables
//@synthesize numerator, denominator;
+(Fraction *) allocF
{
    extern int gCounter;
    ++gCounter;
    
    return [Fraction alloc];
}

+(int) count
{
    extern int gCounter;
    
    return gCounter;
}

-(instancetype) initWith:(int)n over:(int)d
{
    self = [super init];
    
    if (self)
        [self setTo:n over:d];
    
    return self;
}

-(instancetype) init
{
    return [self initWith:0 over:0];
}

-(void) print
{
    NSLog(@"%i/%i", self.numerator, self.denominator);
}

-(void) setTo:(int)n over:(int)d
{
    self.numerator = n;
    self.denominator = d;
}

-(id) addMod: (id) f
{
    id result;
    result = [[Fraction alloc] init];
    int numer = self.numerator * [f denominator] + self.denominator * [f numerator];
    [result setNumerator: numer];
    int denom = self.denominator * [f denominator];
    [result setDenominator: denom];
    return result;
}

-(double) convertToNum
{
    if (_denominator != 0)
        return (double) self.numerator / self.denominator;
    else
        return NAN;
}
-(void) reduce
{
    int u = self.numerator;
    int v = self.denominator;
    int temp;
    
    if (u == 0)
    {
        return;
    }
    
    while (v != 0) {
        temp = u % v;
        u = v;
        v = temp;
    }
    
    self.numerator /= u;
    self.denominator /= u;
}
-(BOOL)isLessThanOrEqualTo:(id)object
{
    return YES;
}
-(BOOL)isLessThan:(id)object
{
    return YES;
}
@end
