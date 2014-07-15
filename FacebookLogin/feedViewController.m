//
//  feedViewController.m
//  FacebookLogin
//
//  Created by ANUPRIYA AGRAWAL on 7/2/14.
//  Copyright (c) 2014 IshanBhalla. All rights reserved.
//

#import "feedViewController.h"

@interface feedViewController ()
//@property (weak, nonatomic) IBOutlet UIImageView *feedImageView;
@property (weak, nonatomic) IBOutlet UIScrollView *feedScrollView;


@end

@implementation feedViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        self.title = @"News Feed";
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    //NSLog(@"reached 0");
    // Do any additional setup after loading the view from its nib.
    
    UIImage *searchButtonImage = [[UIImage imageNamed:@"navbar-search"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    UIBarButtonItem *leftButton = [[UIBarButtonItem alloc] initWithImage:searchButtonImage  style:UIBarButtonItemStylePlain target:self action:nil];
    self.navigationItem.leftBarButtonItem = leftButton;
    
    UIImage *friendButtonImage = [[UIImage imageNamed:@"navbar-friends"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    UIBarButtonItem *rightButton = [[UIBarButtonItem alloc] initWithImage:friendButtonImage  style:UIBarButtonItemStylePlain target:self action:nil];
    self.navigationItem.rightBarButtonItem = rightButton;
    
    
    // set up the scroll view
    self.feedScrollView.contentSize = CGSizeMake(320, 1000);
    self.feedScrollView.frame = CGRectMake(0, 455, 320, 410);
    self.feedScrollView.frame = CGRectMake(0, 45, 320, 459);
    
    

    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
