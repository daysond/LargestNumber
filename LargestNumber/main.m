//
//  main.m
//  LargestNumber
//
//  Created by Dayson Dong on 2019-01-31.
//  Copyright © 2019 Dayson Dong. All rights reserved.
//

#import <Foundation/Foundation.h>

int findLargest(NSArray *array) {
    
    int largest = 0;
    
    for (id num in array) {
        
        if ([num intValue] > largest) {
            largest = [num intValue];
        }
    }
    
    
    return largest;
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSArray *myArray = @[@3, @7, @6, @8];
        NSArray *anotherArray = @[@44, @5, @6];
        
        NSLog(@"The largest numbers are %i, %i",findLargest(myArray),findLargest(anotherArray));
        
    }
    return 0;
}
