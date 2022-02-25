//
//  Calculator+Trig.m
//  Calculator
//
//  Created by Aleksei Sodnomov on 22.02.2022.
//

#import "Calculator+Trig.h"
#import "Calculator.h"

@implementation Calculator(Trig)
-(double) sin
{
    return sin(self.accumulator);
}
-(double) cos
{
    return cos(self.accumulator);
}
-(double) tan
{
    return tan(self.accumulator);
}
@end
