//
//  NSDictionary+Enumerable.h
//  MRCEnumerable
//
//  Created by Marcus Crafter on 17/11/10.
//  Copyright 2010 Red Artisan. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface NSDictionary (Enumerable)

- (void)each:(void (^)(id key, id obj))block;
- (id)inject:(id)m :(id (^)(id m, id key, id obj))block;
- (NSDictionary *)select:(BOOL (^)(id key, id obj))block;
- (NSDictionary *)reject:(BOOL (^)(id key, id obj))block;
- (id)detect:(BOOL (^)(id key, id obj))block;

@end
