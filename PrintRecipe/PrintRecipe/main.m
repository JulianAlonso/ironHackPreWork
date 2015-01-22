//
//  main.m
//  PrintRecipe
//
//  Created by Julian Alonso on 21/1/15.
//  Copyright (c) 2015 Julian Alonso. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Recipe.h"
#import "Ingredient.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        /* DIRTY code:
        NSArray *ingredients = @[@"bacon", @"queso", @"patatas"];
        NSString *directions = @"Frie las patatas, luego frie el bacon, hecha el bacon encima de patatas y luego el queso";
      
        NSLog(@"Mi receta favoria tiene los siguientes ingredientes: %@.", [ingredients description]);
        NSLog(@"El modo de preparacion es el siguiente: %@", directions);
        */
        
        Recipe *recipe = [[Recipe alloc] init];
        
        NSString *gr = @"gr";
        
        //INGREDIENTS
        Ingredient *bacon = [[Ingredient alloc] initWithName:@"Bacon" quantity:200 andQuantityType:gr];
        Ingredient *cheese = [[Ingredient alloc] initWithName:@"Chesse" quantity:100 andQuantityType:gr];
        Ingredient *chips = [[Ingredient alloc] initWithName:@"Chips" quantity:500 andQuantityType:gr];
        
        //STEEPS
        NSArray *steeps = [NSArray arrayWithObjects:@"Frie las patatas", @"Frie el bacon", @"Pon las patatas en un plato",
                           @"Hecha el bacon por encima", @"Hecha el queso por encima", @"gratina 3min",nil];
        
        //INSERT INGREDIENTS
        [recipe.ingredients addObject: bacon];
        [recipe.ingredients addObject: cheese];
        [recipe.ingredients addObject: chips];
        
        //INSERT STEEPS
        [recipe.steeps addObjectsFromArray:steeps];
        
        //PRINT RECIPE
        [recipe printIngredients];
        [recipe printSteeps];
    }
    return 0;
}
