//
//  MarveAPIHelper.m
//  MarvelAPIDemo
//
//  Created by Diego Freniche Brito on 02/07/14.
//  Copyright (c) 2014 Diego Freniche Brito. All rights reserved.
//

#import "MarvelAPIHelper.h"
#import "NSString+MD5.h"

#define MARVEL_BASE_URL @"http://gateway.marvel.com/v1/public/"
@interface MarvelAPIHelper()
@property (nonatomic,strong) NSString * ts;
@end
@implementation MarvelAPIHelper

-(NSString *)getTimeStamp{
    NSDate *currentTime = [NSDate date];
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc]init];
    [dateFormatter setDateFormat:@"mmss"];
    NSString *resultString = [dateFormatter stringFromDate:currentTime];
    self.ts = resultString;
    return  resultString;
}

- (NSString *)authorizationString{
    
    NSString *preHash = [NSString stringWithFormat:@"%@%@%@", [self getTimeStamp], self.privateKey, self.publicKey];
    
    return [preHash MD5];
}

- (NSArray *)allComics{

    NSString *authString = [self authorizationString];
    NSString *get = [NSString stringWithFormat:@"%@%@?ts=%@&apikey=%@&hash=%@", MARVEL_BASE_URL, @"comics", self.ts, self.publicKey, authString];
    
    NSArray *comics;
    
    NSURL *url = [NSURL URLWithString:get];
    
    NSData *data = [NSData dataWithContentsOfURL:url];
    
    return comics;
}


-(NSData *) dataForSuperHeroNamed:(NSString *)name{
    NSString *authString = [self authorizationString];
    NSString *get = [NSString stringWithFormat:@"%@%@?name=%@&ts=%@&apikey=%@&hash=%@", MARVEL_BASE_URL, @"characters",name, self.ts, self.publicKey, authString];
    
    NSArray *comics;
    
    NSURL *url = [NSURL URLWithString:get];
    
    NSData *data = [NSData dataWithContentsOfURL:url];
    
    return comics;

    
}

@end
