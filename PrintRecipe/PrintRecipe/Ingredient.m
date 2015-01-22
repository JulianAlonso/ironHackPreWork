//
//  Ingredient.m
//  PrintRecipe
//
//  Created by Julian Alonso on 22/1/15.
//  Copyright (c) 2015 Julian Alonso. All rights reserved.
//

#import "Ingredient.h"

@implementation Ingredient

-(id) initWithName:(NSString *)name quantity:(NSUInteger)quantity andQuantityType:(NSString *)quantityType
{
    self = [super init];
    
    if (self)
    {
        self.name = name;
        self.quantity = quantity;
        self.quantityType = quantityType;
    }
    
    return self;
}

-(void) printName
{
    NSLog(@"%@",self.name);
}

-(void) printQuantity
{
    NSLog(@"%lu%@",self.quantity, self.quantityType);
}

-(void) print
{
    NSLog(@"%@ %lu%@", self.name, self.quantity, self.quantityType);
}

@end
