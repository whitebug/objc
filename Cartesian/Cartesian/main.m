//
//  main.m
//  Cartesian
//
//  Created by Aleksei Sodnomov on 11.02.2022.
//

#import <Foundation/Foundation.h>

@interface XYPoint : NSObject

-(void) setX: (int) x;
-(void) setY: (int) y;
-(int) getX;
-(int) getY;

@end

@implementation XYPoint
{
    int mainX;
    int mainY;
}

-(void) setX: (int) x
{
    mainX = x;
}
-(void) setY:(int)y
{
    mainY = y;
}
-(int) getX
{
    return mainX;
}
-(int) getY
{
    return mainY;
}

@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        XYPoint *point = [[XYPoint alloc] init];
        
        [point setX:2];
        [point setY:3];
        
        NSLog(@"The coordinates are x: %i, y: %i", [point getX], [point getY]);
    }
    return 0;
}
