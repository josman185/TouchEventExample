//
//  ViewController.m
//  TouchExample
//
//  Created by jose on 3/14/16.
//  Copyright © 2016 jose. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.image.image = [UIImage imageNamed:@"Hand.png"];
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    //touch event
    UITouch *touch = [[event allTouches] anyObject];
    //the touch location
    CGPoint touchLocation = [touch locationInView:touch.view];
    //the image size is 50x50
    //the new location of the upper corner is
    CGPoint leftCorner = touchLocation;
    leftCorner.x+=25;
    leftCorner.y+=25;
    //relocate the image
    
    self.image.center = leftCorner;
}

-(void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    //touch event
    UITouch *touch = [[event allTouches] anyObject];
    //the touch location
    CGPoint touchLocation = [touch locationInView:touch.view];
    //the image size is 50x50
    //the new location of the upper corner is
    CGPoint leftCorner = touchLocation;
    leftCorner.x+=25;
    leftCorner.y+=25;
    //relocate the image
    
    self.image.center = leftCorner;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
