//
//  OBViewController.m
//  SpriteKitSimpleGame
//
//  Created by Onur Baykal on 2.11.2013.
//  Copyright (c) 2013 Onur Baykal. All rights reserved.
//

#import "OBViewController.h"
#import "OBMyScene.h"

@implementation OBViewController
 
- (void)viewWillLayoutSubviews
{
    [super viewWillLayoutSubviews];
    
    SKView * skView = (SKView *)self.view;
    
    if( skView.scene == nil )
    {
        skView.showsFPS = YES;
        skView.showsNodeCount = YES;
        
        
        SKScene * scene = [OBMyScene sceneWithSize:skView.bounds.size];
        scene.scaleMode = SKSceneScaleModeAspectFill;
        
        
        [skView presentScene:scene];
    }
}

- (BOOL)shouldAutorotate
{
    return YES;
}

- (NSUInteger)supportedInterfaceOrientations
{
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return UIInterfaceOrientationMaskAllButUpsideDown;
    } else {
        return UIInterfaceOrientationMaskAll;
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

@end
