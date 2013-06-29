//
//  NSDictionary+Enumerable.m
//  MRCEnumerable
//
//  Created by Marcus Crafter on 17/11/10.
//  Copyright 2010 Red Artisan. All rights reserved.
//

#import "NSDictionary+Enumerable.h"
#import "NSArray+Utilities.h"

@implementation NSDictionary (Enumerable)

- (void)each:(void (^)(id key, id obj))block {
    [self enumerateKeysAndObjectsUsingBlock:^(id key, id obj, BOOL *stop) { block(key, obj); }];
}

- (id)inject:(id)m :(id (^)(id m, id key, id obj))block {
    id result = m ? m : [self objectForKey:[[self allKeys] firstObject]]; // REVISIT: correct semantics?
    
    for (id key in [self allKeys]) {
        result = block(result, key, [self objectForKey:key]);
    }
    
    return result;
}

- (NSDictionary *)select:(BOOL (^)(id key, id obj))block {
    return [self inject:[NSMutableDictionary dictionary] :^(id m, id key, id obj) {
        if (block(key, obj) == YES) [m setValue:obj forKey:key];
        return m;
    }];
}

- (NSDictionary *)reject:(BOOL (^)(id key, id obj))block {
    return [self inject:[NSMutableDictionary dictionary] :^(id m, id key, id obj) {
        if (block(key, obj) == NO) [m setValue:obj forKey:key];
        return m;
    }];    
}

- (id)detect:(BOOL (^)(id key, id obj))block {
    for (id key in [self allKeys]) {
        if (block(key, [self objectForKey:key])) return key;
    }
    
    return nil;    
}

@end
