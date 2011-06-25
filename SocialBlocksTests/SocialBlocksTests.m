//
//  SocialBlocksTests.m
//  SocialBlocksTests
//
//  Created by User on 22.05.11.
//  Copyright 2011 Home. All rights reserved.
//

#import "SocialBlocksTests.h"
#import "AlgorythmFactory.h"
#import "BundleBox.h"
#import "BoxView.h"


@implementation SocialBlocksTests

- (void)setUp
{
    [super setUp];
    
    // Set-up code here.
}

- (void)tearDown
{
    // Tear-down code here.
    
    [super tearDown];
}

- (void)testShiftBundleBox
{
    // Test Case #1 (1 1 1)
    
    BundleBox* bundleBox1 = [[BundleBox alloc] 
                             initWithBoxes:[[BoxView alloc] initWithColorOnly:1]
                             secondBox:[[BoxView alloc] initWithColorOnly:2]
                             thirdBox:[[BoxView alloc] initWithColorOnly:3]];
    
    BundleBox* bundleBox2 = [[BundleBox alloc] 
                             initWithBoxes:[[BoxView alloc] initWithColorOnly:3]
                             secondBox:[[BoxView alloc] initWithColorOnly:1]
                             thirdBox:[[BoxView alloc] initWithColorOnly:2]];
    
    [bundleBox1 setBundle:[AlgorythmFactory shiftBundleBox:[bundleBox1 bundle]]];
    
    STAssertTrue([self compareBundles:[bundleBox1 bundle] 
                         secondBundle:[bundleBox2 bundle]], 
                 @"Test Case #1 is failed");

    // Test Case #2 (0 1 1)
    
    bundleBox1 = [[BundleBox alloc] 
                             initWithBoxes:[[BoxView alloc] initWithColorOnly:1]
                             secondBox:[[BoxView alloc] initWithColorOnly:2]
                             thirdBox:[[BoxView alloc] initWithColorOnly:3]];
    
    bundleBox2 = [[BundleBox alloc] 
                             initWithBoxes:[[BoxView alloc] initWithColorOnly:3]
                             secondBox:[[BoxView alloc] initWithColorOnly:3]
                             thirdBox:[[BoxView alloc] initWithColorOnly:2]];

    [bundleBox1 killBox:0];
    [bundleBox2 killBox:0];
    
    [bundleBox1 setBundle:[AlgorythmFactory shiftBundleBox:[bundleBox1 bundle]]];
    
    STAssertTrue([self compareBundles:[bundleBox1 bundle] 
                         secondBundle:[bundleBox2 bundle]], 
                 @"Test Case #2 is failed");
 
    // Test Case #3 (1 0 1)
    
    bundleBox1 = [[BundleBox alloc] 
                  initWithBoxes:[[BoxView alloc] initWithColorOnly:1]
                  secondBox:[[BoxView alloc] initWithColorOnly:2]
                  thirdBox:[[BoxView alloc] initWithColorOnly:3]];
    
    bundleBox2 = [[BundleBox alloc] 
                  initWithBoxes:[[BoxView alloc] initWithColorOnly:3]
                  secondBox:[[BoxView alloc] initWithColorOnly:1]
                  thirdBox:[[BoxView alloc] initWithColorOnly:1]];

    [bundleBox1 killBox:1];
    [bundleBox2 killBox:1];    
    
    [bundleBox1 setBundle:[AlgorythmFactory shiftBundleBox:[bundleBox1 bundle]]];
    
    STAssertTrue([self compareBundles:[bundleBox1 bundle] 
                         secondBundle:[bundleBox2 bundle]], 
                 @"Test Case #3 is failed");
    
    // Test Case #4 (1 1 0)
    
    bundleBox1 = [[BundleBox alloc] 
                  initWithBoxes:[[BoxView alloc] initWithColorOnly:1]
                  secondBox:[[BoxView alloc] initWithColorOnly:2]
                  thirdBox:[[BoxView alloc] initWithColorOnly:3]];
    
    bundleBox2 = [[BundleBox alloc] 
                  initWithBoxes:[[BoxView alloc] initWithColorOnly:2]
                  secondBox:[[BoxView alloc] initWithColorOnly:1]
                  thirdBox:[[BoxView alloc] initWithColorOnly:2]];
 
    [bundleBox1 killBox:2];
    [bundleBox2 killBox:2];    
    
    [bundleBox1 setBundle:[AlgorythmFactory shiftBundleBox:[bundleBox1 bundle]]];
    
    STAssertTrue([self compareBundles:[bundleBox1 bundle] 
                         secondBundle:[bundleBox2 bundle]], 
                 @"Test Case #4 is failed");
    
    // Test Case #5 (1 0 0)
    
    bundleBox1 = [[BundleBox alloc] 
                  initWithBoxes:[[BoxView alloc] initWithColorOnly:1]
                  secondBox:[[BoxView alloc] initWithColorOnly:2]
                  thirdBox:[[BoxView alloc] initWithColorOnly:3]];
    
    bundleBox2 = [[BundleBox alloc] 
                  initWithBoxes:[[BoxView alloc] initWithColorOnly:1]
                  secondBox:[[BoxView alloc] initWithColorOnly:1]
                  thirdBox:[[BoxView alloc] initWithColorOnly:2]];
    
    [bundleBox1 killBox:1];
    [bundleBox2 killBox:1];    
    [bundleBox1 killBox:1];
    [bundleBox2 killBox:1];    
    
    [bundleBox1 setBundle:[AlgorythmFactory shiftBundleBox:[bundleBox1 bundle]]];
    
    STAssertTrue([self compareBundles:[bundleBox1 bundle] 
                         secondBundle:[bundleBox2 bundle]], 
                 @"Test Case #5 is failed");
   
    // Test Case #6 (0 1 0)
    
    bundleBox1 = [[BundleBox alloc] 
                  initWithBoxes:[[BoxView alloc] initWithColorOnly:1]
                  secondBox:[[BoxView alloc] initWithColorOnly:2]
                  thirdBox:[[BoxView alloc] initWithColorOnly:3]];
    
    bundleBox2 = [[BundleBox alloc] 
                  initWithBoxes:[[BoxView alloc] initWithColorOnly:2]
                  secondBox:[[BoxView alloc] initWithColorOnly:2]
                  thirdBox:[[BoxView alloc] initWithColorOnly:2]];
    
    [bundleBox1 killBox:0];
    [bundleBox2 killBox:0];    
    [bundleBox1 killBox:1];
    [bundleBox2 killBox:1];  
    
    [bundleBox1 setBundle:[AlgorythmFactory shiftBundleBox:[bundleBox1 bundle]]];
    
    STAssertTrue([self compareBundles:[bundleBox1 bundle] 
                         secondBundle:[bundleBox2 bundle]], 
                 @"Test Case #6 is failed");
    
    // Test Case #7 (0 0 1)
    
    bundleBox1 = [[BundleBox alloc] 
                  initWithBoxes:[[BoxView alloc] initWithColorOnly:1]
                  secondBox:[[BoxView alloc] initWithColorOnly:2]
                  thirdBox:[[BoxView alloc] initWithColorOnly:3]];
    
    bundleBox2 = [[BundleBox alloc] 
                  initWithBoxes:[[BoxView alloc] initWithColorOnly:2]
                  secondBox:[[BoxView alloc] initWithColorOnly:1]
                  thirdBox:[[BoxView alloc] initWithColorOnly:3]];
    
    [bundleBox1 killBox:0];
    [bundleBox2 killBox:0];    
    [bundleBox1 killBox:0];
    [bundleBox2 killBox:0];  
    
    [bundleBox1 setBundle:[AlgorythmFactory shiftBundleBox:[bundleBox1 bundle]]];
    
    STAssertTrue([self compareBundles:[bundleBox1 bundle] 
                         secondBundle:[bundleBox2 bundle]], 
                 @"Test Case #7 is failed");    

}

- (void) testMatrix
{
    NSMutableDictionary* matrix1 = [self loadMatrix:@"matrix01"];
    NSMutableDictionary* matrix2 = [self loadMatrix:@"matrix02"];

    STAssertTrue([self compareMatrix:matrix1 secondMatrix:matrix2], @"Matrix1<>Matrix2");
}

- (BOOL) compareBundles:(NSMutableArray*)bundle1 secondBundle:(NSMutableArray*)bundle2
{
    if ([bundle1 count]!=[bundle2 count]) {
        return NO;
    }
    else{
        for(int i=0; i<[bundle1 count]; i++){
            int color1 = [((BoxView*) [bundle1 objectAtIndex:i]) color];
            int color2 = [((BoxView*) [bundle2 objectAtIndex:i]) color];

            if(color1!=color2)
                return NO;
        }
    }
    return YES;
}

- (BOOL) compareMatrix:(NSMutableDictionary*)matrix1 secondMatrix:(NSMutableDictionary*)matrix2
{
    for (int i=0; i<COLLUMN_X; i++) {
        for (int j=0; j<COLLUMN_Y; j++) {
            NSValue* key = [NSValue valueWithCGPoint:CGPointMake(i,j)];
            BoxView* box1 = (BoxView*) [matrix1 objectForKey:key];
            BoxView* box2 = (BoxView*) [matrix2 objectForKey:key];
            if ([box1 color]!=[box2 color]) {
                return NO;
            }
        }
    }
    return YES;
}

- (void) showBundle:(NSMutableArray*)array
{
    for(id box in array) {
        int color = [((BoxView*) box) color];
        NSLog(@"Element = %d",color);
    }
}

- (NSMutableDictionary*) loadMatrix:(NSString*)fileName
{
	NSMutableDictionary* matrix = [[NSMutableDictionary alloc] init];
	
	NSString* fileRoot = [[NSBundle mainBundle] pathForResource:fileName ofType:@"txt"];
    
	NSString* fileContents = [NSString stringWithContentsOfFile:fileRoot 
													   encoding:NSUTF8StringEncoding error:nil];
	
	NSArray* allLinedStrings = [fileContents componentsSeparatedByCharactersInSet:
								[NSCharacterSet newlineCharacterSet]];
	
	for (int i=0; i<[allLinedStrings count]; i++) {
		NSString* currentPointString = [allLinedStrings objectAtIndex:i];
		NSArray* singleStrs = [currentPointString componentsSeparatedByCharactersInSet:
							   [NSCharacterSet characterSetWithCharactersInString:@","]];
		
        for (int j=0; j<[singleStrs count]; j++) {
            int color = [[singleStrs objectAtIndex:j] intValue];
            BoxView* box = [[BoxView alloc] initWithColorOnly:color];
            [matrix setObject:box forKey:[NSValue valueWithCGPoint:CGPointMake(j, i)]];
        }
	}	
	
	return matrix;
}

-(void) showMatrix:(NSMutableDictionary*)matrix
{
    NSValue* key = [NSValue valueWithCGPoint:CGPointMake(0, 0)];
    BoxView* box = [matrix objectForKey:key];
    NSLog(@"Color = %d",[box color]);
}

@end






