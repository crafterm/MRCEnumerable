//
//  NSSet+Enumerable.m
//  MRCEnumerable
//
//  Created by Marcus Crafter on 27/03/11.
//  Copyright 2011 Red Artisan. All rights reserved.
//

#import "NSSet+Enumerable.h"
#import "NSArray+Utilities.h"

@implementation NSSet (Enumerable)

- (void)each:(void (^)(id obj))block {
    [self enumerateObjectsUsingBlock:^(id obj, BOOL *stop) { block(obj); }];
}

- (void)eachWithIndex:(void (^)(id obj, NSUInteger idx))block {
    NSUInteger idx = 0;
    
    for (id object in self) {
        block(object, idx++);
    }
}

- (NSSet *)collect:(id (^)(id obj))block {
    NSMutableSet * results = [NSMutableSet setWithCapacity:[self count]];
    [self enumerateObjectsUsingBlock:^(id obj, BOOL *stop) { [results addObject:block(obj)]; }];
    return results;
}


- (NSSet *)collectWithIndex:(id (^)(id obj, NSUInteger idx))block {
    NSMutableSet * results = [NSMutableSet setWithCapacity:[self count]];
    NSUInteger idx = 0;
    
    for (id object in self) {
        [results addObject:block(object, idx++)];
    }

    return results;    
}

- (id)inject:(id)m :(id (^)(id m, id obj))block {
    id result = m ? m : [[self allObjects] firstObject];
    
    for (id object in self) {
        result = block(result, object);
    }
    
    return result;
}

- (NSSet *)select:(BOOL (^)(id obj))block {
    return [self inject:[NSMutableSet set] :^(id m, id obj) {
        if (block(obj) == YES) [m addObject:obj];
        return m;
    }];
}

- (NSSet *)reject:(BOOL (^)(id obj))block {
    return [self inject:[NSMutableSet set] :^(id m, id obj) {
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

@end
