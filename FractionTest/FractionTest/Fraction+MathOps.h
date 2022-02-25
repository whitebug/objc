//
//  Fraction+MathOps.h
//  FractionTest
//
//  Created by Aleksei Sodnomov on 21.02.2022.
//

#import <Foundation/Foundation.h>
#import "Fraction.h"

NS_ASSUME_NONNULL_BEGIN

@interface Fraction (MathOps)
-(Fraction *)   add: (Fraction *) f;
-(Fraction *)   substract: (Fraction *) f;
-(Fraction *)   multiply: (Fraction *) f;
-(Fraction *)   divide: (Fraction *) f;
-(Fraction *)   invert;
@end

NS_ASSUME_NONNULL_END
