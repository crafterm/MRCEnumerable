//
//  NSDictionary+Select+Test.m
//  MRCEnumerable
//
//  Created by Marcus Crafter on 18/11/10.
//  Copyright 2010 Red Artisan. All rights reserved.
//

@interface NSDictionary_Select_Test : XCTestCase
@end

@implementation NSDictionary_Select_Test

- (void)testSelectShouldCollectElementsReturningTrueWithTheSuppliedBlock {
    NSDictionary * dict = [NSDictionary dictionaryWithObjectsAndKeys:@"dog", @"pet", @"jack", @"car", nil];
    NSDictionary * results = [dict select:^(id key, id obj) {
        return (BOOL)([key length] == [obj length]);
    }];
    NSDictionary * expected = [NSDictionary dictionaryWithObjectsAndKeys:@"dog", @"pet", nil];
    XCTAssertEqualObjects(expected, results, @"should be equal");
}

@end
