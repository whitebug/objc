//
//  main.m
//  Inheritance
//
//  Created by Aleksei Sodnomov on 12.02.2022.
//

#import <Foundation/Foundation.h>
#import "ClassA.h"
#import "ClassB.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        ClassA *a = [[ClassA alloc] init];
        ClassB *b = [[ClassB alloc] init];
        
        [a initVar];
        [a printVar];
        
        [b initVar];
        [b printVar];
    }
    return 0;
}
