//
//  ViewController.m
//  PrintRecipeOnScren
//
//  Created by Julian Alonso on 24/1/15.
//  Copyright (c) 2015 Julian Alonso. All rights reserved.
//

#import "ViewController.h"
#import "JACRecipe.h"
#import "JACIngredient.h"

@interface ViewController ()

@end

@implementation ViewController {
    JACRecipe *recipe;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.recipeService = [[JACRecipeService alloc] init];
    
    [self loadRecipe];
    
    [self fillLabels];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) fillLabels
{
    
     if (recipe != nil)
     {
         NSMutableArray *ingredients = [recipe getIngredients];
         JACIngredient *ingredient = [ingredients objectAtIndex: 0];
     
         [self.firstIngredient setText: [ingredient getFullName]];
         ingredient = [ingredients objectAtIndex: 1];
         [self.secondIngredient setText: [ingredient getFullName]];
         ingredient = [ingredients objectAtIndex: 2];
         [self.thirdIngredient setText: [ingredient getFullName]];
     
         NSMutableArray *steeps = [recipe getSteeps];
     
         [self.firstSteep setText: [steeps objectAtIndex: 0]];
         [self.secondSteep setText: [steeps objectAtIndex: 1]];
         [self.thirdSteep setText: [steeps objectAtIndex: 2]];
         [self.fourthSteep setText: [steeps objectAtIndex: 3]];
         [self.fifthSteep setText: [steeps objectAtIndex: 4]];
         [self.sisthSteep setText: [steeps objectAtIndex: 5]];
     }
    
}

- (void) loadRecipe
{
    
    NSMutableArray *recipes = [self.recipeService findAllRecipes];
    
    recipe = [recipes objectAtIndex: 0];
    
}
@end
