//
//  NSSet+EachWithIndex+Test.m
//  MRCEnumerable
//
//  Created by Marcus Crafter on 16/11/10.
//  Copyright 2010 Red Artisan. All rights reserved.
//

@interface NSSet_EachWithIndex_Test : GHTestCase
@end

@implementation NSSet_EachWithIndex_Test

- (void)testEachShouldCallTheBlockOverEachElement {
    NSSet * set = [NSSet setWithObject:@"dog"];
    [set eachWithIndex:^(id obj, NSUInteger idx) {
        GHAssertEquals(@"dog", obj, @"should be equal");
        GHAssertTrue(0 == idx, @"index should equal");
    }];
}

@end
