//
//  JACRecipeService.m
//  PrintRecipeOnScren
//
//  Created by Julian Alonso on 24/1/15.
//  Copyright (c) 2015 Julian Alonso. All rights reserved.
//

#import "JACRecipeService.h"

@implementation JACRecipeService

-(id) init
{
    self.server = [[JACFakeServer alloc] init];
    
    return self;
}

-(NSMutableArray *) findAllRecipes
{
    return [self.server findAllRecipes];
}


@end
