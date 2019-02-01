//
//  ArrayUtility.h
//  LargestNumber
//
//  Created by Dayson Dong on 2019-02-01.
//  Copyright © 2019 Dayson Dong. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ArrayUtility : NSObject

+(NSNumber*) largestNumber: (NSArray*) array;
+(NSNumber*) medianNumber: (NSArray*) array;
+(NSNumber*) smallestNumber: (NSArray*) array;


@end

NS_ASSUME_NONNULL_END
