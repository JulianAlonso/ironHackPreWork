//
//  JACRecipe.m
//  PrintRecipeOnScren
//
//  Created by Julian Alonso on 24/1/15.
//  Copyright (c) 2015 Julian Alonso. All rights reserved.
//

#import "JACRecipe.h"

@implementation JACRecipe

-(id) init
{
    self = [super init];
    
    if (self) {
        self.ingredients = [[NSMutableArray alloc]init];
        self.steeps = [[NSMutableArray alloc] init];
    }
    return self;
}

- (NSMutableArray *) getIngredients
{
    return self.ingredients;
}

- (NSMutableArray *) getSteeps
{
    return self.steeps;
}


@end
