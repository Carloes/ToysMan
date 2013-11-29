//
//  ViewController.m
//  Bomdiggy
//
//  Created by Carlos on 22-11-13.
//  Copyright (c) 2013 Carzilla. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize imageview;

- (void)viewDidLoad
{
    [super viewDidLoad];
    /* Initialize the swipe controls */
    [self initSwipeControls];
    
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"ROFL" message:@"Dee dee doo doo." delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil];
    [alert show];

    /* TEMP: create some images */
    BomdiggyImage *image = [[BomdiggyImage alloc] initWithBomdiggyImage:@"http://www.bomdiggy.com/p2013/111113213305.jpg"];
    BomdiggyImage *image2 = [[BomdiggyImage alloc] initWithBomdiggyImage:@"http://www.bomdiggy.com/p2013/221113113132.jpg"];
    BomdiggyImage *image3 = [[BomdiggyImage alloc] initWithBomdiggyImage:@"http://www.bomdiggy.com/p2013/151113190755.jpg"];
    /* Set array */
    images = [NSArray arrayWithObjects:image, image2,image3, nil];
    
    /* TEMP: Set the current key to 0 */
    currentKey = 0;
    /* Make sure we don't scretch the image */
    imageview.contentMode = UIViewContentModeScaleAspectFit;
    /* Put the image in the imageview */
    [imageview setImage:[images[currentKey] getImage]];
}

- (void)swapImage: (int) direction {
    /* currentKey 0 means we're at the end of the array */
    if(currentKey + direction < 0){
        
    }
    else {
        currentKey = currentKey + direction;
        [imageview setImage:[images[currentKey] getImage]];
        
    }
}

/* Method which initializes the swipe controls */
- (void)initSwipeControls {
    /* Handle swipeLeft, make all calls go to handleSwipeLeft */
    UISwipeGestureRecognizer *swipeLeft = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(handleSwipeLeft:)];
    swipeLeft.direction = UISwipeGestureRecognizerDirectionLeft;
    /* Handle swipeRight, make all calls go to handleSwipeRight */
    UISwipeGestureRecognizer *swipeRight = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(handleSwipeRight:)];
    swipeRight.direction = UISwipeGestureRecognizerDirectionRight;
    
    /* Make sure the app understands that we've just added swipe gestures */
    [[UIApplication sharedApplication].delegate.window addGestureRecognizer:swipeLeft];
    [[UIApplication sharedApplication].delegate.window addGestureRecognizer:swipeRight];
}
/* Handles the swiping to the right */
- (void)handleSwipeRight:(UIGestureRecognizer*)source {
    [self swapImage:1];
    NSLog(@"Swiped Right");
}
/* Handles the swiping to the left */
- (void)handleSwipeLeft:(UIGestureRecognizer*)source {
    [self swapImage:-1];
    NSLog(@"Swiped Left");
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

@end
