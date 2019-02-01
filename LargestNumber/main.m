//
//  main.m
//  LargestNumber
//
//  Created by Dayson Dong on 2019-01-31.
//  Copyright © 2019 Dayson Dong. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ArrayUtility.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSArray *myArray = @[@3, @7, @6, @8, @99, @654, @3456,@22,@23];
        NSArray *anotherArray = @[@1, @56, @44, @5, @6, @7];
        
//        NSLog(@"The largest numbers are %i, %i",findLargest(myArray),findLargest(anotherArray));
        NSNumber *largest1 = [ArrayUtility medianNumber:myArray];
        NSNumber *largest2 = [ArrayUtility medianNumber:anotherArray];
        

        
        
        NSLog(@"1: %@ \n 2: %@",largest1,largest2);
        
        
    }
    return 0;
}
