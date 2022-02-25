//
//  XYPoint.h
//  Rectangle
//
//  Created by Aleksei Sodnomov on 13.02.2022.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface XYPoint : NSObject

@property int x, y;

-(void) setX: (int) xVal andY: (int) yVal;
@end

NS_ASSUME_NONNULL_END
