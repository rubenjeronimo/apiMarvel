//
//  SuperHero.h
//  MarvelAPIDemo
//
//  Created by Ruben Jeronimo Fernandez on 07/07/14.
//  Copyright (c) 2014 Diego Freniche Brito. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SuperHero : NSObject
@property (nonatomic,strong)NSString *name;
@property (nonatomic,strong) NSString *detail;
@property (nonatomic,strong) NSString *thumbnail;
-(SuperHero *)superHeroWithData:(NSData *)data;

@end
