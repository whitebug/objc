//
//  main.m
//  Globals
//
//  Created by Aleksei Sodnomov on 20.02.2022.
//

#import <Foundation/Foundation.h>
#import "Foo.h"

int gGlobalVar = 5;

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Foo *myFoo = [[Foo alloc] init];
        NSLog(@"%i ", gGlobalVar);
        
        [myFoo setgGlobalvar: 100];
        NSLog(@"%i ", gGlobalVar);
    }
    return 0;
}
