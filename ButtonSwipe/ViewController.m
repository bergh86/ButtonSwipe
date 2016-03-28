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
    UIButton*       button;
    IBOutlet UIScrollView* scrollView;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    CGRect rc = self.view.frame;
    CGSize buttonSize = CGSizeMake(150, 40);
    
    button = [[UIButton alloc] initWithFrame:CGRectMake(0, 0,
                               buttonSize.width,
                               buttonSize.height)];
    [button setBackgroundColor:[UIColor blueColor]];
    [button setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [button setTitle:@"Button" forState:UIControlStateNormal];
    
    [scrollView addSubview:button];
    [scrollView setContentSize:CGSizeMake(rc.size.width * 2, rc.size.height * 2)];
}

-(void) viewDidLayoutSubviews
{
    CGRect rcView = scrollView.frame;
    CGRect rcBtn = button.frame;
    CGSize contentSize = CGSizeMake(rcView.size.width * 2 - rcBtn.size.width, rcView.size.height * 2 - rcBtn.size.height);
    [scrollView setContentSize:contentSize];
    
    rcBtn.origin = CGPointMake(contentSize.width / 2 - rcBtn.size.width / 2,
                                     contentSize.height / 2 - rcBtn.size.height / 2);
    button.frame = rcBtn;
    
    [scrollView setContentOffset:CGPointMake(contentSize.width / 4 - rcBtn.size.width / 4,
                                            contentSize.height / 4 - rcBtn.size.height / 4)];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
