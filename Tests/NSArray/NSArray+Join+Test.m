//
//  NSArray+Join+Test.m
//  MRCEnumerable
//
//  Created by Marcus Crafter on 23/06/13.
//
//

@interface NSArray_Join_Test : XCTestCase
@end

@implementation NSArray_Join_Test

- (void)testJoinShouldReturnSingleStringWithNoSeparator {
    NSArray * array = [NSArray arrayWithObjects:@"dog", @"mouse", nil];
    NSString * result = [array join];
    NSString * expected = @"dogmouse";
    XCTAssertEqualObjects(expected, result, @"should be equal");
}

- (void)testJoinWithSeparatorShouldReturnSingleStringSeparator {
    NSArray * array = [NSArray arrayWithObjects:@"dog", @"mouse", nil];
    NSString * result = [array join:@"-"];
    NSString * expected = @"dog-mouse";
    XCTAssertEqualObjects(expected, result, @"should be equal");
}

@end
