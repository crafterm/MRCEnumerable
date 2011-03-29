//
//  NSSet+Each+Test.m
//  MRCEnumerable
//
//  Created by Marcus Crafter on 16/11/10.
//  Copyright 2010 Red Artisan. All rights reserved.
//

@interface NSSet_Each_Test : GHTestCase
@end

@implementation NSSet_Each_Test

- (void)testEachShouldCallTheBlockOverEachElement {
    NSSet * set = [NSSet setWithObject:@"dog"];
    [set each:^(id obj) {
        GHAssertEquals(@"dog", obj, @"should be equal");
    }];
}

@end
