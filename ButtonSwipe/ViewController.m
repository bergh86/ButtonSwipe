//
//  ViewController.m
//  ButtonSwipe
//
//  Created by Bergh on 3/28/16.
//  Copyright © 2016 mobile. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    IBOutlet UIButton*  button;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction) displayGestureForSwipeRecognize:(UISwipeGestureRecognizer*) recognizer
{
    __block CGRect rc = button.frame;
    
    switch (recognizer.direction) {
        case UISwipeGestureRecognizerDirectionUp:
            rc.origin.y = 0;
            break;
        case UISwipeGestureRecognizerDirectionDown:
            rc.origin.y = self.view.frame.size.height - rc.size.height;
            break;
        default:
            return;
    }

    [UIView animateWithDuration:0.5f animations:^{
        button.frame = rc;
    }];
}
@end
