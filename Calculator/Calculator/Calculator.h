//
//  Calculator.h
//  Calculator
//
//  Created by Aleksei Sodnomov on 22.02.2022.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Calculator : NSObject

// accumulator methods
-(void)     setAccumulator: (double) value;
-(void)     clear;
-(double)   accumulator;

// arithmetic methods
-(void)     add: (double) value;
-(void)     substract: (double) value;
-(void)     multiply: (double) value;
-(void)     divide: (double) value;
@end

NS_ASSUME_NONNULL_END
