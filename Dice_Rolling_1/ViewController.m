//
//  ViewController.m
//  Dice_Rolling_1
//
//  Created by cao hebing on 13/08/2015.
//  Copyright (c) 2015 Lisa. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()


@property (weak, nonatomic) IBOutlet UITextField *diceNumberInput;


@property (weak, nonatomic) IBOutlet UILabel *diceResult;

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

- (IBAction)checkDiceNumber:(UIButton *)sender {
    
    NSLog(@"%@", self.diceNumberInput.text);
    
    NSString *numberOfDice = self.diceNumberInput.text;
    
    NSUInteger diceInteger = [numberOfDice intValue];
    
    //verify the input
    if ( diceInteger > 3 && diceInteger <=6)
    {
        [self.diceResult setText:@"Big"];
    }else if (diceInteger >=1 && diceInteger <=3 ){
        
        [self.diceResult setText:@"Small"];

    }else
    {
        [self.diceResult setText:@"Please Enter 1 - 6"];
    }
    
    //[self.diceResult setText:numberOfDice];
    
    
}




@end
