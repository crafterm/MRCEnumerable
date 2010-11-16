//
//  NSArray+Utilities+Test
//  MRCEnumerable
//
//  Created by Marcus Crafter on 16/11/10.
//  Copyright 2010 Red Artisan. All rights reserved.
//

@interface NSArray_Empty_Test : GHTestCase
@end

@implementation NSArray_Empty_Test

- (void)testEmptyShouldBeEmpty {
    NSArray * emptyArray = [NSArray array];
    GHAssertTrue([emptyArray empty], @"should be empty");
}

- (void)testNonEmptyArrayShouldNotBeEmpty {
    NSArray * nonEmptyArray = [NSArray arrayWithObject:@"element"];
    GHAssertFalse([nonEmptyArray empty], @"should not be empty");
}

@end
