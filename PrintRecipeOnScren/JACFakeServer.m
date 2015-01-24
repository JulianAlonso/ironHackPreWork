//
//  JACFakeServer.m
//  PrintRecipeOnScren
//
//  Created by Julian Alonso on 24/1/15.
//  Copyright (c) 2015 Julian Alonso. All rights reserved.
//

#import "JACFakeServer.h"
#import "JACFakeServer.h"
#import "JACRecipe.h"
#import "JACIngredient.h"

@implementation JACFakeServer

-(NSMutableArray *) findAllRecipes
{
    NSMutableArray *recipes = [[NSMutableArray alloc] init];
    
    //en lugar de conectarse al servidor, pedir y crear la receta, se crea aqui.
    
    JACRecipe *recipe = [[JACRecipe alloc] init];
    
    NSString *gr = @"gr";
    
    //INGREDIENTS
    JACIngredient *bacon = [[JACIngredient alloc] initWithName:@"Bacon" quantity:200 andQuantityType:gr];
    JACIngredient *cheese = [[JACIngredient alloc] initWithName:@"Chesse" quantity:100 andQuantityType:gr];
    JACIngredient *chips = [[JACIngredient alloc] initWithName:@"Chips" quantity:500 andQuantityType:gr];
    
    //STEEPS
    NSArray *steeps = [NSArray arrayWithObjects:@"Frie las patatas", @"Frie el bacon", @"Pon las patatas en un plato",
                       @"Hecha el bacon por encima", @"Hecha el queso por encima", @"gratina 3min",nil];
    
    //INSERT INGREDIENTS
    [recipe.ingredients addObject: bacon];
    [recipe.ingredients addObject: cheese];
    [recipe.ingredients addObject: chips];
    
    //INSERT STEEPS
    [recipe.steeps addObjectsFromArray:steeps];
    
    //INSERT RECIPE INTO ARRAY
    [recipes addObject:recipe];
    
    return recipes;
}

@end
