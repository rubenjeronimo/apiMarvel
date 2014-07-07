//
//  SuperHero.m
//  MarvelAPIDemo
//
//  Created by Ruben Jeronimo Fernandez on 07/07/14.
//  Copyright (c) 2014 Diego Freniche Brito. All rights reserved.
//

#import "SuperHero.h"
#import "MarvelAPIHelper.h"
#import "CosaViewController.h"

@implementation SuperHero
-(SuperHero *)superHeroWithData:(NSData *)data{
    SuperHero *hero = [[SuperHero alloc]init];
    NSDictionary *jsonObject=[NSJSONSerialization
                              JSONObjectWithData:data
                              options:NSJSONReadingMutableLeaves
                              error:nil];
    NSLog(@"jsonObject is %@",jsonObject);
    hero.name = [jsonObject valueForKey:@"name"];
    hero.detail = [jsonObject valueForKey:@"description"];
    hero.thumbnail = [jsonObject valueForKey:@"thumbnail"];
    return hero;
}



@end
