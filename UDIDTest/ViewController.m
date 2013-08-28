//
//  ViewController.m
//  DeviceIdentifierTest
//
//  Created by wpsteak on 13/8/27.
//  Copyright (c) 2013年 Prince. All rights reserved.
//

#import "ViewController.h"
#import <AdSupport/AdSupport.h>
#import "UIDevice+IdentifierAddition.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextView *advertisingIdTextView;
@property (weak, nonatomic) IBOutlet UITextView *venderIdTextView;
@property (weak, nonatomic) IBOutlet UITextView *macIdTestView;

@end

@implementation ViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {

    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    UIBarButtonItem *reloadButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemRefresh target:self action:@selector(reloadData)];
    reloadButton.style = UIBarButtonItemStylePlain;
    
    self.navigationItem.rightBarButtonItems = @[reloadButton];
    
    [self reloadData];
}

- (void)reloadData {
    NSString *advertisingIdentifier = [[[ASIdentifierManager sharedManager] advertisingIdentifier] UUIDString];
    NSString *identifierForVendor = [[[UIDevice currentDevice] identifierForVendor] UUIDString];
    NSString *uniqueGlobalDeviceIdentifier = [[UIDevice currentDevice] uniqueGlobalDeviceIdentifier];
    
    [self.advertisingIdTextView setText:advertisingIdentifier];
    [self.venderIdTextView setText:identifierForVendor];
    [self.macIdTestView setText:uniqueGlobalDeviceIdentifier];
}

@end
