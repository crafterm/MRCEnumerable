//
//  NSSet+Enumerable.h
//  MRCEnumerable
//
//  Created by Marcus Crafter on 27/03/11.
//  Copyright 2011 Red Artisan. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface NSSet (Enumerable)

- (void)each:(void (^)(id obj))block;
- (void)eachWithIndex:(void (^)(id obj, NSUInteger idx))block;
- (NSSet *)collect:(id (^)(id obj))block;
- (NSSet *)collectWithIndex:(id (^)(id obj, NSUInteger idx))block;
- (id)inject:(id)m :(id (^)(id m, id obj))block;
- (NSSet *)select:(BOOL (^)(id obj))block;
- (NSSet *)reject:(BOOL (^)(id obj))block;
- (id)detect:(BOOL (^)(id obj))block;

@end
