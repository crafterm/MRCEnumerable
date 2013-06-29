//
//  NSArray+Utilities.h
//  MRCEnumerable
//
//  Created by Marcus Crafter on 16/11/10.
//  Copyright 2010 Red Artisan. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface NSArray (Utilities)

- (id)firstObject;
- (BOOL)empty;
- (NSString *)join;
- (NSString *)join:(NSString *)separator;

@end
