//
//  ComparisonProtocol.h
//  FractionTest
//
//  Created by Aleksei Sodnomov on 22.02.2022.
//

#ifndef ComparisonProtocol_h
#define ComparisonProtocol_h

@protocol ComparisonProtocol
@required
-(BOOL) isEqualTo:(id)object;
@required
-(BOOL) isLessThanOrEqualTo:(id)object;
@required
-(BOOL) isLessThan:(id)object;
@optional
-(BOOL) isGreaterThanOrEqualTo:(id)object;
@end

#endif /* ComparisonProtocol_h */
