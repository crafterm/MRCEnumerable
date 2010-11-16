//
//  NSArray+FirstObject+Test.m
//  MRCEnumerable
//
//  Created by Marcus Crafter on 16/11/10.
//  Copyright 2010 Red Artisan. All rights reserved.
//

@interface NSArray_FirstObject_Test : GHTestCase
@end

@implementation NSArray_FirstObject_Test

- (void)testFirstObjectShouldReturnNilWhenEmpty {
    NSArray * emptyArray = [NSArray array];
    GHAssertNil([emptyArray firstObject], @"should be nil");
}

- (void)testFirstObjectShouldReturnFirstObjectWhenNonEmpty {
    NSArray * nonEmptyArray = [NSArray arrayWithObject:@"element"];
    GHAssertEquals([nonEmptyArray objectAtIndex:0], [nonEmptyArray firstObject], @"should be equal");
}

@end
