//
//  MarvelAPIHelperTests.m
//  MarvelAPIDemo
//
//  Created by Diego Freniche Brito on 02/07/14.
//  Copyright (c) 2014 Diego Freniche Brito. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "MarvelAPIHelper.h"

@interface MarvelAPIHelperTests : XCTestCase

@end

@implementation MarvelAPIHelperTests



- (void)testGetComics {
    
    
    MarvelAPIHelper *mah = [[MarvelAPIHelper alloc] init];
    mah.publicKey = @"f7e0c12565c31948b5cd595ae9944512";
    mah.privateKey = @"1af527bf946fc3afa195a3b970b3cd279d304e53";
    [mah dataForSuperHeroNamed:@"Hulk"];

    
}

@end
