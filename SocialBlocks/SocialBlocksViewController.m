//
//  SocialBlocksViewController.m
//  SocialBlocks
//
//  Created by User on 22.05.11.
//  Copyright 2011 Home. All rights reserved.
//

#import "SocialBlocksViewController.h"

@implementation SocialBlocksViewController

- (void)dealloc
{
    [super dealloc];
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    [super viewDidLoad];
    gameState = [[GameState alloc] initGameState];
    BundleBox* bundle = [[BundleBox alloc] 
                         initWithBoxes:[[BoxView alloc] initBoxView:1 withX:100 withY:0] 
                         secondBox:[[BoxView alloc] initBoxView:2 withX:(100+SIZE) withY:0]
                         thirdBox:[[BoxView alloc] initBoxView:3 withX:(100+2*SIZE) withY:0]];
    
    [gameState addNewBunddle:bundle];
    gameView = [[GameView alloc] initWithGameState:gameState withFrame:CGRectMake(0, 0, 200, 200)];
    [self.view addSubview:gameView];
    
    [[gameState currentBundle] moveDown];
}

- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
    NSSet *allTouches = [event allTouches];
    UITouch *touch = [[allTouches allObjects] objectAtIndex:0]; 
    CGPoint touchEnded = [touch locationInView:self.view];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
