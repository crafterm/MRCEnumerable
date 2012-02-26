//
//  NSArray+FindIndex+Test.m
//  MRCEnumerable
//
//  Created by Marcus Crafter on 27/02/12.
//  Copyright (c) 2012 Red Artisan. All rights reserved.
//

@interface NSArray_FindIndex_Test : GHTestCase
@end

@implementation NSArray_FindIndex_Test

- (void)testFindIndexShouldReturnTheIndexOfTheGivenElementWhenPresent {
    NSArray * array = [NSArray arrayWithObjects:@"dog", @"mouse", nil];
    GHAssertEquals(1, [array findIndex:@"mouse"], @"should be equal");
}

- (void)testFindIndexShouldReturnFailWhenNotPresent {
    NSArray * array = [NSArray arrayWithObjects:@"dog", @"mouse", nil];
    GHAssertEquals(-1, [array findIndex:@"cat"],   @"should not be equal");
}

- (void)testFindIndexShouldReturnTheIndexOfTheGivenElementUsingBlockSyntax {
    NSArray * array = [NSArray arrayWithObjects:@"dog", @"mouse", nil];
    GHAssertEquals(1, [array findIndexWithBlock:^BOOL(id obj) { return obj == @"mouse"; }], @"should be equal");
    GHAssertEquals(-1, [array findIndexWithBlock:^BOOL(id obj) { return obj == @"cat"; }], @"should not be equal");
}

@end
