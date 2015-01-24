//
//  JACRecipeService.h
//  PrintRecipeOnScren
//
//  Created by Julian Alonso on 24/1/15.
//  Copyright (c) 2015 Julian Alonso. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "JACFakeServer.h"

@interface JACRecipeService : NSObject

@property JACFakeServer *server;

-(NSMutableArray *) findAllRecipes;


@end
