//
//  JACRecipe.h
//  PrintRecipeOnScren
//
//  Created by Julian Alonso on 24/1/15.
//  Copyright (c) 2015 Julian Alonso. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface JACRecipe : NSObject

@property NSMutableArray *ingredients;
@property NSMutableArray *steeps;

- (NSMutableArray *) getIngredients;
- (NSMutableArray *) getSteeps;


@end
