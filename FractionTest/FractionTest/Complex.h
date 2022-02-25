//
//  Complex.h
//  FractionTest
//
//  Created by Aleksei Sodnomov on 13.02.2022.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Complex : NSObject

@property double real, imaginary;
-(void) print;
-(void) setReal:(double) a andImaginary: (double) b;
-(Complex *) add: (Complex *) f;

@end

NS_ASSUME_NONNULL_END
