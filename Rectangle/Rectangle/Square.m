//
//  Square.m
//  Rectangle
//
//  Created by Aleksei Sodnomov on 13.02.2022.
//

#import "Square.h"

@implementation Square

-(instancetype) initWithSide: (int) side
{
    self = [super init];
    if (self){
        [self setSide: side];
    }
    return self;
}

-(instancetype) init
{
    return [self initWithSide: 0];
}

-(void) setSide: (int) s
{
    [self setWidth: s andHeight: s];
}

-(int) side
{
    return self.width;
}
@end
