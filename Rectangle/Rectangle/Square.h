//
//  Square.h
//  Rectangle
//
//  Created by Aleksei Sodnomov on 13.02.2022.
//

#import "Rectangle.h"

NS_ASSUME_NONNULL_BEGIN

@interface Square : Rectangle

-(instancetype) initWithSide: (int) side;
-(instancetype) init;
-(void)         setSide: (int) s;
-(int)          side;
@end

NS_ASSUME_NONNULL_END
