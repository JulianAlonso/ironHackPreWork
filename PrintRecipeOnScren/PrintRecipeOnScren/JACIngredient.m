//
//  JACIngredient.m
//  PrintRecipeOnScren
//
//  Created by Julian Alonso on 24/1/15.
//  Copyright (c) 2015 Julian Alonso. All rights reserved.
//

#import "JACIngredient.h"

@implementation JACIngredient

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

- (NSString *) getFullName
{
    return [NSString stringWithFormat:@"%@ %li%@", self.name, (unsigned long)self.quantity, self.quantityType];
}

@end
