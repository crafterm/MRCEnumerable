//
//  NSSet+Detect+Test.m
//  MRCEnumerable
//
//  Created by Marcus Crafter on 16/11/10.
//  Copyright 2010 Red Artisan. All rights reserved.
//

@interface NSSet_Detect_Test : XCTestCase
@end

@implementation NSSet_Detect_Test

- (void)testReturnTheFirstItemReturningTrueWithTheGivenBlock {
    NSSet * set = [NSSet setWithObjects:@"dog", @"cat", nil];
    NSString * result = [set detect:^(id obj) {
        return (BOOL)([obj length] == 3);
    }];
    XCTAssertEqualObjects(@"dog", result, @"should be equal");
}

@end
