//
//  main.m
//  Rectangle
//
//  Created by Aleksei Sodnomov on 13.02.2022.
//

#import <Foundation/Foundation.h>
#import "Rectangle.h"
#import "Square.h"
#import "XYPoint.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Rectangle   *myRect = [[Rectangle alloc] init];
        Square      *mySquare = [[Square alloc] init];
        XYPoint     *myPoint = [[XYPoint alloc] init];
        
        [myPoint setX: 100 andY: 200];
        [myRect setWidth: 5 andHeight: 8];
        [mySquare setSide: 5];
        myRect.origin = myPoint;
        
        NSLog(@"Rectangle: w = %i, h = %i", myRect.width, myRect.height);
        NSLog(@"Area = %i, Perimeter = %i", [myRect area], [myRect perimeter]);
        NSLog(@"Origin at (%i, %i)", myRect.origin.x, myRect.origin.y);
        
        NSLog(@"Square s = %i", [mySquare side]);
        NSLog(@"Area = %i, Perimeter = %i", [mySquare area], [mySquare perimeter]);
        
        [myPoint setX: 50 andY: 50];
        NSLog(@"Origin at (%i, %i)", myRect.origin.x, myRect.origin.y);
        
        XYPoint *theOrigin = myRect.origin;
        
        theOrigin.x = 400;
        theOrigin.y = 500;
        
        NSLog(@"Origin at (%i, %i)", myRect.origin.x, myRect.origin.y);
        
        NSLog(@"member testing");
        
        if([myRect isMemberOfClass: [Rectangle class]] == YES)
            NSLog(@"myRect is a member of Rectangle class");
        if([myRect isMemberOfClass: [Square class]] == YES)
            NSLog(@"myRect is a member of Square class");
        if([myRect isMemberOfClass: [NSObject class]] == YES)
            NSLog(@"myRect is a member of NSObject class");
        
        if([myRect isKindOfClass: [Rectangle class]] == YES)
            NSLog(@"myRect isKindOfClass of Rectangle class");
        if([myRect isKindOfClass: [Square class]] == YES)
            NSLog(@"myRect isKindOfClass of Square class");
        if([myRect isKindOfClass: [NSObject class]] == YES)
            NSLog(@"myRect isKindOfClass of NSObject class");
        
        NSLog(@"Square");
        
        if([mySquare isKindOfClass: [Rectangle class]] == YES)
            NSLog(@"myRect isKindOfClass of Rectangle class");
        if([mySquare isKindOfClass: [Square class]] == YES)
            NSLog(@"myRect isKindOfClass of Square class");
        if([mySquare isKindOfClass: [NSObject class]] == YES)
            NSLog(@"myRect isKindOfClass of NSObject class");
    }
    return 0;
}
