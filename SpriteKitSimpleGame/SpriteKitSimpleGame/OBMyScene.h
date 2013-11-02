//
//  OBMyScene.h
//  SpriteKitSimpleGame
//
//  Created by Onur Baykal on 2.11.2013.
//  Copyright (c) 2013 Onur Baykal. All rights reserved.
//

#import <SpriteKit/SpriteKit.h>

@interface OBMyScene : SKScene
@property (nonatomic) SKSpriteNode * player;
@property (nonatomic) NSTimeInterval lastSpawnTimeInterval;
@property (nonatomic) NSTimeInterval lastUpdateTimeInterval;
@end