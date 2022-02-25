//
//  Rectangle.h
//  Rectangle
//
//  Created by Aleksei Sodnomov on 13.02.2022.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@class XYPoint;

@interface Rectangle : NSObject

@property int width, height;

-(instancetype) initWithWidth: (int) w andHeight: (int) h;
-(instancetype) init;
-(XYPoint *)    origin;
-(void)         setOrigin: (XYPoint *) pt;
-(int)          area;
-(int)          perimeter;
-(void)         setWidth: (int) w andHeight: (int) h;
@end

NS_ASSUME_NONNULL_END
