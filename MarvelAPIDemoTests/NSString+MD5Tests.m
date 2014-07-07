//
//  NSString+MD5Tests.m
//  MarvelAPIDemo
//
//  Created by Diego Freniche Brito on 02/07/14.
//  Copyright (c) 2014 Diego Freniche Brito. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "NSString+MD5.h"

@interface NSString_MD5Tests : XCTestCase


@end

@implementation NSString_MD5Tests


- (void)testMD5public {
    
    NSString *theString = @"f7e0c12565c31948b5cd595ae9944512";
    
    NSString *md5 = [theString MD5];
    
    XCTAssertEqualObjects(md5, @"b5a132134fdbe30d59456a2e1b5d5cb0", @"");
}

- (void)testMD5private {
    
    NSString *theString = @"1af527bf946fc3afa195a3b970b3cd279d304e53";
    
    NSString *md5 = [theString MD5];
    
    XCTAssertEqualObjects(md5, @"7e04ab91c5ce4a157153a1756bf8d079", @"");
}

- (void)testMD5publicFalse {
    
    NSString *theString = @"f7e0c12565c31948b5cd595ae9944512";
    
    NSString *md5 = [theString MD5];
    
    XCTAssertNotEqualObjects(md5, @"1b5a132134fdbe30d59456a2e1b5d5cb0", @"");
}

- (void)testMD5privateFalse {
    
    NSString *theString = @"1af527bf946fc3afa195a3b970b3cd279d304e53";
    
    NSString *md5 = [theString MD5];
    
    XCTAssertNotEqualObjects(md5, @"17e04ab91c5ce4a157153a1756bf8d079", @"");
}


@end
