//
//  AddEventViewController.h
//  rgaspardFour
//
//  Created by Russell Gaspard on 1/30/14.
//  Copyright (c) 2014 Russell Gaspard. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AddEventViewController : UIViewController
{
    IBOutlet UILabel *swipeLabelLeft;
    
    //Gesture Recognizer
    UISwipeGestureRecognizer *leftSwiper;
    
}
@end
