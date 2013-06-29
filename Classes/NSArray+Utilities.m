//
//  NSArray+Utilities.m
//  MRCEnumerable
//
//  Created by Marcus Crafter on 16/11/10.
//  Copyright 2010 Red Artisan. All rights reserved.
//

#import "NSArray+Utilities.h"


@implementation NSArray (Utilities)

- (id)firstObject {
    if ([self empty]) return nil;
    return [self objectAtIndex:0];
}

- (BOOL)empty {
    return [self count] == 0;
}

- (NSString *)join {
    return [self join:nil];
}

- (NSString *)join:(NSString *)separator {
    NSMutableString * result = [NSMutableString stringWithCapacity:10];
    NSUInteger numberOfElements = [self count];
    [self enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
        [result appendString:obj];
        if (separator && (idx + 1) < numberOfElements) {
            [result appendString:separator];
        }
    }];
    return result;
}

@end
