//
//  Recipe.h
//  PrintRecipe
//
//  Created by Julian Alonso on 22/1/15.
//  Copyright (c) 2015 Julian Alonso. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Recipe : NSObject

@property NSMutableArray *ingredients;
@property NSMutableArray *steeps;


-(void) printIngredients;
-(void) printSteeps;


@end
