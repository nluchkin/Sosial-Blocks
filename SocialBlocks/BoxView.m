//
//  BoxView.m
//  SocialBlocks
//
//  Created by User on 22.05.11.
//  Copyright 2011 Home. All rights reserved.
//

#import "BoxView.h"
#import "GameConstants.h"


@implementation BoxView

@synthesize x, y, color, duration;


-(id) initBoxView:(int)_color withX:(int)_x withY:(int)_y
{    
    self = [super initWithFrame:CGRectMake(_x, _y, SIZE, SIZE)];
    
	NSArray *boxImages = [[NSArray alloc] initWithArray:[NSArray arrayWithObjects:
                                                         [UIImage imageNamed:@"block_blue_30x30.jpg"],			
                                                         [UIImage imageNamed:@"block_green_30x30.jpg"],			
                                                         [UIImage imageNamed:@"block_yellow_30x30.jpg"],		
                                                         [UIImage imageNamed:@"block_cyan_30x30.jpg"],				
                                                         [UIImage imageNamed:@"block_red_30x30.jpg"],
                                                         nil]];
    
    if (self) {
		[self setColor:_color];
        [self setX:_x];
        [self setY:_y];
        [self setDuration:1];
        UIImageView* background = [[UIImageView alloc] initWithImage:
                                   (UIImage*) [boxImages objectAtIndex:_color]];                        
        [self addSubview:background];
    }
    return self;
}

-(void)moveLeft 
{
	//
}

-(void)moveRight 
{
	//
}

-(void)moveDown 
{    
    [UIView beginAnimations:@"moveDown" context:nil];
    [UIView setAnimationDuration:duration];
    [UIView setAnimationDidStopSelector:@selector(moveDownEnded)];
    [UIImageView setAnimationDelegate:self];
    [UIView setAnimationBeginsFromCurrentState:YES];
    [UIImageView setAnimationCurve:UIViewAnimationCurveLinear];
    self.center = CGPointMake(self.center.x, self.center.y+DY);
    [UIView commitAnimations];	
}

-(void)moveDownEnded
{
}

-(void)changeColor {
	//
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code.
}
*/

- (void)dealloc {
    [super dealloc];
}


@end
