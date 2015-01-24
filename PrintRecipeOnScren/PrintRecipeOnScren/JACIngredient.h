//
//  JACIngredient.h
//  PrintRecipeOnScren
//
//  Created by Julian Alonso on 24/1/15.
//  Copyright (c) 2015 Julian Alonso. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface JACIngredient : NSObject

@property NSString *name;
@property NSUInteger quantity;
@property NSString *quantityType;

-(id) initWithName:(NSString *)name quantity:(NSUInteger)quantity andQuantityType:(NSString *)quantityType;

- (NSString *) getFullName;


@end
