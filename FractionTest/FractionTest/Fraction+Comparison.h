//
//  Fraction+Comparison.h
//  FractionTest
//
//  Created by Aleksei Sodnomov on 22.02.2022.
//

#import <Foundation/Foundation.h>
#import "Fraction.h"

NS_ASSUME_NONNULL_BEGIN

@interface Fraction (Comparison)
-(BOOL) isEqualTo: (Fraction *) f;
-(int) compare: (Fraction *) f;
@end

NS_ASSUME_NONNULL_END
