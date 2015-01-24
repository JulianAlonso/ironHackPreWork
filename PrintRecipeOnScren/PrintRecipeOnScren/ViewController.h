//
//  ViewController.h
//  PrintRecipeOnScren
//
//  Created by Julian Alonso on 24/1/15.
//  Copyright (c) 2015 Julian Alonso. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "JACRecipeService.h"

@interface ViewController : UIViewController

@property (weak, atomic) IBOutlet UILabel *firstIngredient;
@property (weak, atomic) IBOutlet UILabel *secondIngredient;
@property (weak, atomic) IBOutlet UILabel *thirdIngredient;

@property (weak, atomic) IBOutlet UILabel *firstSteep;
@property (weak, atomic) IBOutlet UILabel *secondSteep;
@property (weak, atomic) IBOutlet UILabel *thirdSteep;
@property (weak, atomic) IBOutlet UILabel *fourthSteep;
@property (weak, atomic) IBOutlet UILabel *fifthSteep;
@property (weak, atomic) IBOutlet UILabel *sisthSteep;

@property JACRecipeService *recipeService;

@end

