//
//  Foo.m
//  Globals
//
//  Created by Aleksei Sodnomov on 20.02.2022.
//

#import "Foo.h"

@implementation Foo

-(void) setgGlobalvar:(int)val
{
    extern int gGlobalVar;
    gGlobalVar = val;
}

@end
