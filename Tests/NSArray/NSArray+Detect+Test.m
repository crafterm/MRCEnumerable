//
//  NSArray+Detect+Test.m
//  MRCEnumerable
//
//  Created by Marcus Crafter on 16/11/10.
//  Copyright 2010 Red Artisan. All rights reserved.
//

@interface NSArray_Detect_Test : XCTestCase
@end

@implementation NSArray_Detect_Test

- (void)testReturnTheFirstItemReturningTrueWithTheGivenBlock {
    NSArray * array = [NSArray arrayWithObjects:@"dog", @"cat", nil];
    NSString * result = [array detect:^(id obj) {
        return (BOOL)([obj length] == 3);
    }];
    XCTAssertEqualObjects(@"dog", result, @"should be equal");
}

@end
