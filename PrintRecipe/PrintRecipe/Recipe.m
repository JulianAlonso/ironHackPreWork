//
//  Recipe.m
//  PrintRecipe
//
//  Created by Julian Alonso on 22/1/15.
//  Copyright (c) 2015 Julian Alonso. All rights reserved.
//

#import "Recipe.h"
#import "Ingredient.h"
@implementation Recipe

-(id) init
{
    self = [super init];
    
    if (self) {
        self.ingredients = [[NSMutableArray alloc]init];
        self.steeps = [[NSMutableArray alloc] init];
    }
    return self;
}

-(void) printIngredients
{
    Ingredient *ingredient;
    
    for (ingredient in self.ingredients)
    {
        [ingredient print];
    }
}

-(void) printSteeps
{
    NSString *steep;
    NSUInteger count = 1;
    for (steep in self.steeps)
    {
        NSLog(@"Steep %lu: %@", count, steep);
        count++;
    }
}


@end
