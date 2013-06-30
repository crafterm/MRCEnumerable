//
//  main.m
//  MRCEnumerable Example
//
//  Created by Marcus Crafter on 30/06/13.
//  Copyright (c) 2013 Marcus Crafter - Red Artisan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MRCEnumerable.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        NSArray * animalNames = @[ @"dog", @"cat", @"bird" ];
        NSArray * labels = [animalNames collectWithIndex:^(NSString * animal, NSUInteger idx) {
            return [NSString stringWithFormat:@"%lu: %@\n", (unsigned long)idx, animal];
        }];

        NSLog(@"%@", [labels join]);
    }
    return 0;
}

