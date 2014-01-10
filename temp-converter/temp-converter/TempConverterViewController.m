//
//  TempConverterViewController.m
//  temp-converter
//
//  Created by Dan Dosch on 1/9/14.
//  Copyright (c) 2014 Yahoo. All rights reserved.
//

#import "TempConverterViewController.h"

@interface TempConverterViewController ()

@property (weak, nonatomic) IBOutlet UITextField *farenText;
@property (weak, nonatomic) IBOutlet UITextField *celciusText;

- (float)farenToCelcius:(float)faren;
- (float)celciusToFaren:(float)celcius;

- (IBAction)convert:(id)sender;

@end

@implementation TempConverterViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)convert:(id)sender {
    if ([self.celciusText isEditing]) {
        NSLog(@"Converting celcius to farenheit");
        self.farenText.text = [NSString stringWithFormat:@"%0.2f", [self celciusToFaren:[self.celciusText.text floatValue]]];
    } else {
        NSLog(@"Converting farenheit to celcius");
        self.celciusText.text = [NSString stringWithFormat:@"%0.2f", [self farenToCelcius:[self.farenText.text floatValue]]];
    }
}

- (float)farenToCelcius:(float)faren {
    return (5.0 / 9.0) * (faren - 32.0);
}

- (float)celciusToFaren:(float)celcius {
    return ((celcius * 9.0) / 5.0) + 32;
}

@end
