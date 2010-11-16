//
//  NSArray+Enumerable.m
//  MRCEnumerable
//
//  Created by Marcus Crafter on 16/11/10.
//  Copyright 2010 Red Artisan. All rights reserved.
//

#import "NSArray+Enumerable.h"
#import "NSArray+Utilities.h"

@implementation NSArray (Enumerable)

- (void)each:(void (^)(id obj))block {
    [self enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) { block(obj); }];
}

- (void)eachWithIndex:(void (^)(id obj, NSUInteger idx))block {
    [self enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) { block(obj, idx); }];
}

- (NSArray *)collect:(id (^)(id obj))block {
    NSMutableArray * results = [NSMutableArray arrayWithCapacity:[self count]];

    for (id object in self) {
        [results addObject:block(object)];
    }

    return results;
}

- (NSArray *)collectWithIndex:(id (^)(id obj, NSUInteger idx))block {
    NSMutableArray * results = [NSMutableArray arrayWithCapacity:[self count]];

    for (int i = 0; i < [self count]; i++) {
        [results addObject:block([self objectAtIndex:i], i)];
    }

    return results;
}

- (id)inject:(id)m :(id (^)(id m, id obj))block {
    id result = m ? m : [self firstObject];

    for (id object in self) {
        result = block(result, object);
    }

    return result;
}

- (NSArray *)select:(BOOL (^)(id obj))block {
    return [self inject:[NSMutableArray array] :^(id m, id obj) {
        if (block(obj) == YES) [m addObject:obj];
        return m;
    }];
}

- (NSArray *)reject:(BOOL (^)(id obj))block {
    return [self inject:[NSMutableArray array] :^(id m, id obj) {
        if (block(obj) == NO) [m addObject:obj];
        return m;
    }];
}

- (id)detect:(BOOL (^)(id obj))block {
    for (id object in self) {
        if (block(object)) return object;
    }

    return nil;
}

//- (NSArray *)select:(BOOL (^)(id obj))block {
//    NSMutableArray * results = [NSMutableArray arrayWithCapacity:[self count]];
//
//    for (id object in self) {
//        if (block(object)) [results addObject:object];
//    }
//
//    return results;
//}

//- (NSArray *)reject:(BOOL (^)(id obj))block {
//    return [self select:^(id obj) {
//        if (block(obj)) {
//            return NO;
//        }
//        return YES;
//    }];
//}

@end
