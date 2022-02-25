//
//  Rectangle.m
//  Rectangle
//
//  Created by Aleksei Sodnomov on 13.02.2022.
//

#import "Rectangle.h"
#import "XYPoint.h"

@implementation Rectangle
{
    XYPoint *origin;
}

@synthesize width, height;

-(instancetype) initWithWidth:(int)w andHeight:(int)h
{
    self = [super init];
    if(self)
        [self setWidth:w andHeight:h];
    return self;
}

-(instancetype) init
{
    return [self initWithWidth:0 andHeight:0];
}

-(void) setOrigin: (XYPoint *) pt
{
    if(!origin)
        origin = [[XYPoint alloc] init];
    origin.x = pt.x;
    origin.y = pt.y;
}

-(XYPoint *) origin
{
    XYPoint *newOrigin = [[XYPoint alloc] init];
    newOrigin.x = origin.x;
    newOrigin.y = origin.y;
    return newOrigin;
}

-(void) setWidth: (int) w andHeight: (int) h
{
    width = w;
    height = h;
}
-(int) area
{
    return width * height;
}
-(int) perimeter
{
    return (width + height) * 2;
}
@end
