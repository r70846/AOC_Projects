//
//  EventView.h
//  rgaspardThree
//
//  Created by Russell Gaspard on 1/23/14.
//  Copyright (c) 2014 FullSail. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface EventView : UIViewController
{
    //Get access to text field
    IBOutlet UITextField *inputField;
}

//Define function to catch button clicks on event view
-(IBAction)onClick:(id)sender;


@end
