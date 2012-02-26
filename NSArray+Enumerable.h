//
//  NSArray+Enumerable.h
//  MRCEnumerable
//
//  Created by Marcus Crafter on 16/11/10.
//  Copyright 2010 Red Artisan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSArray (Enumerable)

- (void)each:(void (^)(id obj))block;
- (void)eachWithIndex:(void (^)(id obj, NSUInteger idx))block;
- (NSArray *)collect:(id (^)(id obj))block;
- (NSArray *)collectWithIndex:(id (^)(id obj, NSUInteger idx))block;
- (id)inject:(id)m :(id (^)(id m, id obj))block;
- (NSArray *)select:(BOOL (^)(id obj))block;
- (NSArray *)reject:(BOOL (^)(id obj))block;
- (id)detect:(BOOL (^)(id obj))block;
- (NSInteger)findIndex:(id)obj;
- (NSInteger)findIndexWithBlock:(BOOL (^)(id obj))block;

@end
