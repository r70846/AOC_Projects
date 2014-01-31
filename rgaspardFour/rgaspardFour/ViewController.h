//
//  ViewController.h
//  rgaspardFour
//
//  Created by Russell Gaspard on 1/30/14.
//  Copyright (c) 2014 Russell Gaspard. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    IBOutlet UILabel *swipeLabelRight;
    
    //Gesture Recognizer
    UISwipeGestureRecognizer *rightSwiper;
    
}

//Reference to my method for button click
-(IBAction)onClick:(id)selector;


@end
