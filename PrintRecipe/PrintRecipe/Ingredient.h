//
//  Ingredient.h
//  PrintRecipe
//
//  Created by Julian Alonso on 22/1/15.
//  Copyright (c) 2015 Julian Alonso. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Ingredient : NSObject

@property NSString *name;
@property NSUInteger quantity;
@property NSString *quantityType;

-(id) initWithName:(NSString *)name quantity:(NSUInteger)quantity andQuantityType:(NSString *)quantityType;
-(void)print;
-(void)printName;
-(void)printQuantity;

@end
