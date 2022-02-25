//
//  main.m
//  FractionTest
//
//  Created by Aleksei Sodnomov on 12.02.2022.
//

#import <Foundation/Foundation.h>
#import "Fraction.h"
#import "Complex.h"
#import "Fraction+MathOps.h"
#import "Fraction+Comparison.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        typedef Fraction * FractionObj;
        id dataValue;
        FractionObj f1 = [[Fraction alloc] init];
        FractionObj f2 = [[Fraction alloc] init];
        FractionObj fracResult;
        
        Complex *c1 = [[Complex alloc] init];
        Complex *c2 = [[Complex alloc] init];
        Complex *compResult;
        
        [f1 setTo: 1 over: 10];
        [f2 setTo: 2 over: 15];
        
        [c1 setReal: 18.0 andImaginary: 2.5];
        [c2 setReal: -5.0 andImaginary: 3.2];
        
//        add and print 2 complex numbers
        
        [c1 print]; NSLog(@"      +"); [c2 print];
        NSLog(@"------------");
        compResult = [c1 add: c2];
        [compResult print];
        NSLog(@"\n");
        
//        add and print 2 fractions
        [f1 print]; NSLog(@"    +"); [f2 print];
        NSLog(@"-----");
        fracResult = [f1 add: f2];
        [fracResult print];
        
//        id test
        NSLog(@"------------");
        dataValue = f1;
        [dataValue print];
        
        dataValue = c1;
        [dataValue setReal:3 andImaginary:4];
        [dataValue print];
        [c1 print];
        
        NSLog(@"selector test");
        
        BOOL testSelector = [Fraction instancesRespondToSelector: @selector(setTo:over:)];
        
        NSLog(@"%hhd", testSelector);
        
        NSLog(@"class member test");
        
        BOOL testMember = [f1 isMemberOfClass: [Fraction class]];
        BOOL testKind = [f1 isKindOfClass: [Fraction class]];
        NSLog(@"%hhd %hhd", testMember, testKind);
        
//        SEL action;
//        action = @selector(convertToNum);
//        id tS = [f2 performSelector: action];
//        NSLog(@"%@", tS);
        
        NSArray *myArray = [NSArray array];
        
        @try {
            [myArray objectAtIndex: 2];
        } @catch (NSException *exception) {
            NSLog(@"Caught %@ \n%@", exception.name, exception.reason);
        } @finally {
            NSLog(@"this is finally part");
        }
        NSLog(@"Execution continues");
        
        id dataMValue;
        dataMValue = [[Fraction alloc] init];
        [dataMValue print];
        
        NSLog(@"test Fraction's add with id as parameter");
        
        id testFraction;
        id test2Fraction;
        id result;
        
        testFraction = [[Fraction alloc] init];
        test2Fraction = [[Fraction alloc] init];
        
        [testFraction setTo:2 over:3];
        [test2Fraction setTo:3 over:5];
        
        result = [testFraction addMod:test2Fraction];
        [result print];
        
        Fraction *fraction = [[Fraction alloc] init];
        id       number = [[Fraction alloc] init];
        
        BOOL fr = [fraction isMemberOfClass: [Complex class]];
        BOOL pt = [number respondsToSelector: @selector(alloc)];
        BOOL tpt = [number isKindOfClass: [Fraction class]];
        
        NSLog(@"fr: %hhd, pt: %hhd, tpt: %hhd", fr, pt, tpt);
        
        Fraction *a, *b;
        a = [[Fraction alloc] initWith:1 over:3];
        b = [[Fraction alloc] initWith:3 over:7];
        
        [a print];
        [b print];
        
        NSLog(@"static test");
        
        NSLog(@"Fractions allocated: %i", [Fraction count]);
        
        Fraction *a1, *b1, *d1;
        a1 = [[Fraction allocF] init];
        b1 = [[Fraction allocF] init];
        d1 = [[Fraction allocF] init];
        
        NSLog(@"Fractions allocated: %i", [Fraction count]);
        
        [a1 setTo:3 over:4];
        
        NSLog(@"inversion test");
        [a1 print];
        b1 = [a1 invert];
        [b1 print];
    }
    
    Fraction *fr1, *fr2, *fr3, *fr4;
    fr1 = [[Fraction alloc] init];
    fr2 = [[Fraction alloc] init];
    fr3 = [[Fraction alloc] init];
    fr4 = [[Fraction alloc] init];
    
    [fr1 setTo:3 over:4];
    [fr2 setTo:6 over:8];
    [fr3 setTo:7 over:8];
    [fr4 setTo:5 over:8];
    
    if ([fr1 isEqualTo: fr2] == YES){
        NSLog(@"they are equal");
    } else {
        NSLog(@"no they aren't");
    }
    
    NSLog(@"compare fr1 and fr2: %i", [fr1 compare: fr2]);
    NSLog(@"compare fr2 and fr3: %i", [fr2 compare: fr3]);
    NSLog(@"compare fr2 and fr4: %i", [fr2 compare: fr4]);
    
    return 0;
}
