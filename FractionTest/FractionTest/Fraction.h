//
//  Fraction.h
//  FractionTest
//
//  Created by Aleksei Sodnomov on 12.02.2022.
//

#import <Foundation/Foundation.h>
#import "ComparisonProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface Fraction : NSObject <ComparisonProtocol>

@property int numerator, denominator;

+(Fraction *)   allocF;
+(int)          count;
-(instancetype) initWith: (int) n over: (int) d;
-(instancetype) init;
-(void)         print;
-(void)         setTo: (int) n over: (int) d;
-(double)       convertToNum;
-(id)           addMod: (id) f;
-(void) reduce;

@end

NS_ASSUME_NONNULL_END
