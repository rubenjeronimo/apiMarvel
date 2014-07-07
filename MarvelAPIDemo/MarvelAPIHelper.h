//
//  MarveAPIHelper.h
//  MarvelAPIDemo
//
//  Created by Diego Freniche Brito on 02/07/14.
//  Copyright (c) 2014 Diego Freniche Brito. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MarvelAPIHelper : NSObject
@property (nonatomic,strong) NSString *privateKey;
@property (nonatomic,strong) NSString *publicKey;

-(NSString *)getTimeStamp;
-(NSData *) dataForSuperHeroNamed:(NSString *)name;
- (NSString *)authorizationString;

- (NSArray *)allComics;

@end
