//
//  ViewController.m
//  UITest
//
//  Created by 李金柱 on 15/9/26.
//  Copyright (c) 2015年 李金柱. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIButton *verticalBtn;
@property (weak, nonatomic) IBOutlet UIButton *landScapeBtn;
@property (weak, nonatomic) IBOutlet UIButton *bgWhiteBtn;
@property (weak, nonatomic) IBOutlet UIButton *bgBlackBtn;
@property (weak, nonatomic) IBOutlet UIButton *bgRedBtn;
@property (weak, nonatomic) IBOutlet UIButton *bgBlueBtn;
@property (weak, nonatomic) IBOutlet UIButton *bgGreenBtn;
@property (weak, nonatomic) IBOutlet UIButton *bgBrownBtn;
@property (weak, nonatomic) IBOutlet UIButton *moveBtn;
@property (weak, nonatomic) IBOutlet UIButton *stillBtn;

@property (weak, nonatomic) IBOutlet UIButton *textGreenBtn;
@property (weak, nonatomic) IBOutlet UIButton *textBlueBtn;
@property (weak, nonatomic) IBOutlet UIButton *textOrangebtn;
@property (weak, nonatomic) IBOutlet UIButton *textPurpleBtn;

@property (weak, nonatomic) IBOutlet UIButton *textYellowBtn;
@property (weak, nonatomic) IBOutlet UITextField *textFileld;
- (IBAction)redClick:(UIButton *)sender;
- (IBAction)yellowClick:(UIButton *)sender;
- (IBAction)greenClick:(UIButton *)sender;
- (IBAction)blueClick:(UIButton *)sender;
- (IBAction)orangeClick:(UIButton *)sender;
- (IBAction)purpleClick:(UIButton *)sender;

@property (weak, nonatomic) IBOutlet UITextField *speedFiled;
- (IBAction)startClick:(UIButton *)sender;
- (IBAction)backColorWhiteClick:(id)sender;
- (IBAction)bcBlackClick:(id)sender;
- (IBAction)bcRedClick:(id)sender;
- (IBAction)bcBlueClick:(id)sender;
- (IBAction)bcGreenClick:(id)sender;
- (IBAction)bcBrownClick:(id)sender;
- (IBAction)moveClick:(id)sender;
- (IBAction)stillClick:(id)sender;
- (IBAction)landscapeClick:(id)sender;
- (IBAction)verticalClick:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *textRedBtn;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view,
    self.view.backgroundColor = [UIColor grayColor];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];

}

- (IBAction)redClick:(UIButton *)sender {
   
    self.textColor = @"red";
    static int i = 0;
    i++;
    if (i % 2 == 1) {
        self.textPurpleBtn.enabled = NO;
        self.textYellowBtn.enabled = NO;
        self.textGreenBtn.enabled = NO;
        self.textOrangebtn.enabled = NO;
        self.textBlueBtn.enabled = NO;
      [self.textRedBtn setImage:[UIImage imageNamed:@"cb_glossy_on"] forState:UIControlStateNormal];
    }else{
        self.textRedBtn.enabled = YES;
        self.textPurpleBtn.enabled = YES;
        self.textYellowBtn.enabled = YES;
        self.textGreenBtn.enabled = YES;
        self.textOrangebtn.enabled = YES;
        self.textBlueBtn.enabled = YES;
          [self.textRedBtn setImage:[UIImage imageNamed:@"cb_glossy_off"] forState:UIControlStateNormal];
    }
    

}

- (IBAction)yellowClick:(UIButton *)sender {
    self.textColor = @"yellow";
    static int i = 0;
    i++;
    if (i % 2 == 1) {
        self.textRedBtn.enabled = NO;
        self.textPurpleBtn.enabled = NO;
        self.textGreenBtn.enabled = NO;
        self.textOrangebtn.enabled = NO;
        self.textBlueBtn.enabled = NO;
        [self.textYellowBtn setImage:[UIImage imageNamed:@"cb_glossy_on"] forState:UIControlStateNormal];
    }else{
        self.textRedBtn.enabled = YES;
        self.textPurpleBtn.enabled = YES;
        self.textYellowBtn.enabled = YES;
        self.textGreenBtn.enabled = YES;
        self.textOrangebtn.enabled = YES;
        self.textBlueBtn.enabled = YES;
        [self.textYellowBtn setImage:[UIImage imageNamed:@"cb_glossy_off"] forState:UIControlStateNormal];
    }

}

- (IBAction)greenClick:(UIButton *)sender {
    self.textColor = @"green";
    static int i = 0;
    i++;
    if (i % 2 == 1) {
        self.textRedBtn.enabled = NO;
        self.textPurpleBtn.enabled = NO;
        self.textYellowBtn.enabled = NO;
        self.textOrangebtn.enabled = NO;
        self.textBlueBtn.enabled = NO;
        [self.textGreenBtn setImage:[UIImage imageNamed:@"cb_glossy_on"] forState:UIControlStateNormal];
    }else{
        self.textRedBtn.enabled = YES;
        self.textPurpleBtn.enabled = YES;
        self.textYellowBtn.enabled = YES;
        self.textOrangebtn.enabled = YES;
        self.textBlueBtn.enabled = YES;
        [self.textGreenBtn setImage:[UIImage imageNamed:@"cb_glossy_off"] forState:UIControlStateNormal];
    }
}

- (IBAction)blueClick:(UIButton *)sender {
    self.textColor = @"blue";
    static int i = 0;
    i++;
    if (i % 2 == 1) {
        self.textRedBtn.enabled = NO;
        self.textPurpleBtn.enabled = NO;
        self.textYellowBtn.enabled = NO;
        self.textGreenBtn.enabled = NO;
        self.textOrangebtn.enabled = NO;
        [self.textBlueBtn setImage:[UIImage imageNamed:@"cb_glossy_on"] forState:UIControlStateNormal];
    }else{
        self.textRedBtn.enabled = YES;
        self.textPurpleBtn.enabled = YES;
        self.textYellowBtn.enabled = YES;
        self.textGreenBtn.enabled = YES;
        self.textOrangebtn.enabled = YES;
        self.textBlueBtn.enabled = YES;
        [self.textBlueBtn setImage:[UIImage imageNamed:@"cb_glossy_off"] forState:UIControlStateNormal];
    }
}

- (IBAction)orangeClick:(UIButton *)sender {
    self.textColor = @"orange";
    static int i = 0;
    i++;
    if (i % 2 == 1) {
        self.textRedBtn.enabled = NO;
        self.textPurpleBtn.enabled = NO;
        self.textYellowBtn.enabled = NO;
        self.textGreenBtn.enabled = NO;
        self.textBlueBtn.enabled = NO;
        [self.textOrangebtn setImage:[UIImage imageNamed:@"cb_glossy_on"] forState:UIControlStateNormal];
    }else{
        self.textRedBtn.enabled = YES;
        self.textPurpleBtn.enabled = YES;
        self.textYellowBtn.enabled = YES;
        self.textGreenBtn.enabled = YES;
        self.textOrangebtn.enabled = YES;
        self.textBlueBtn.enabled = YES;
        [self.textOrangebtn setImage:[UIImage imageNamed:@"cb_glossy_off"] forState:UIControlStateNormal];
    }
}

- (IBAction)purpleClick:(UIButton *)sender {
    self.textColor = @"purple";
    static int i = 0;
    i++;
    if (i % 2 == 1) {
        self.textRedBtn.enabled = NO;
        self.textYellowBtn.enabled = NO;
        self.textGreenBtn.enabled = NO;
        self.textOrangebtn.enabled = NO;
        self.textBlueBtn.enabled = NO;
        [self.textPurpleBtn setImage:[UIImage imageNamed:@"cb_glossy_on"] forState:UIControlStateNormal];
    }else{
        self.textRedBtn.enabled = YES;
        self.textPurpleBtn.enabled = YES;
        self.textYellowBtn.enabled = YES;
        self.textGreenBtn.enabled = YES;
        self.textOrangebtn.enabled = YES;
        self.textBlueBtn.enabled = YES;
        [self.textPurpleBtn setImage:[UIImage imageNamed:@"cb_glossy_off"] forState:UIControlStateNormal];
    }
}
- (IBAction)startClick:(UIButton *)sender {
    
    SecondViewController *secondVC = [[SecondViewController alloc]init];
    
    secondVC.speed = [self.speedFiled.text floatValue];
    secondVC.text = self.textFileld.text;
    secondVC.textColor = self.textColor;
    secondVC.isMoving = self.isMoving;
    secondVC.bgColor = self.backgroundColor;
    secondVC.isV = self.isV;
   //[self.navigationController pushViewController:secondVC animated:YES];
    [self presentViewController:secondVC animated:YES completion:nil];
    
    
}

- (IBAction)backColorWhiteClick:(id)sender {
    self.backgroundColor = @"white";
    static int i = 0;
    i++;
    if (i % 2 == 1) {
        self.bgRedBtn.enabled = NO;
        self.bgBlackBtn.enabled = NO;
        self.bgBlueBtn.enabled = NO;
        self.bgGreenBtn.enabled = NO;
        self.bgBrownBtn.enabled = NO;
        [self.bgWhiteBtn setImage:[UIImage imageNamed:@"cb_glossy_on"] forState:UIControlStateNormal];
        
        
    }else{
        [self.bgWhiteBtn setImage:[UIImage imageNamed:@"cb_glossy_off"] forState:UIControlStateNormal];
        self.bgRedBtn.enabled = YES;
        self.bgBlackBtn.enabled = YES;
        self.bgBlueBtn.enabled = YES;
        self.bgGreenBtn.enabled = YES;
        self.bgBrownBtn.enabled = YES;
    }
}

- (IBAction)bcBlackClick:(id)sender {
    self.backgroundColor = @"black";
    static int i = 0;
    i++;
    if (i % 2 == 1) {
        self.bgRedBtn.enabled = NO;
        self.bgBlueBtn.enabled = NO;
        self.bgGreenBtn.enabled = NO;
        self.bgBrownBtn.enabled = NO;
        self.bgWhiteBtn.enabled = NO;
        [self.bgBlackBtn setImage:[UIImage imageNamed:@"cb_glossy_on"] forState:UIControlStateNormal];
    }else{
        self.bgRedBtn.enabled = YES;
        self.bgBlueBtn.enabled = YES;
        self.bgGreenBtn.enabled = YES;
        self.bgBrownBtn.enabled = YES;
        self.bgWhiteBtn.enabled = YES;
        [self.bgBlackBtn setImage:[UIImage imageNamed:@"cb_glossy_off"] forState:UIControlStateNormal];
    }

}

- (IBAction)bcRedClick:(id)sender {
    self.backgroundColor = @"red";
    static int i = 0;
    i++;
    if (i % 2 == 1) {
        self.bgBlackBtn.enabled = NO;
        self.bgBlueBtn.enabled = NO;
        self.bgGreenBtn.enabled = NO;
        self.bgBrownBtn.enabled = NO;
        self.bgWhiteBtn.enabled = NO;
        [self.bgRedBtn setImage:[UIImage imageNamed:@"cb_glossy_on"] forState:UIControlStateNormal];
    }else{
        self.bgBlackBtn.enabled = YES;
        self.bgBlueBtn.enabled = YES;
        self.bgGreenBtn.enabled = YES;
        self.bgBrownBtn.enabled = YES;
        self.bgWhiteBtn.enabled = YES;
        [self.bgRedBtn setImage:[UIImage imageNamed:@"cb_glossy_off"] forState:UIControlStateNormal];
    }

}

- (IBAction)bcBlueClick:(id)sender {
    self.backgroundColor = @"blue";
    static int i = 0;
    i++;
    if (i % 2 == 1) {
        self.bgRedBtn.enabled = NO;
        self.bgBlackBtn.enabled = NO;
        self.bgGreenBtn.enabled = NO;
        self.bgBrownBtn.enabled = NO;
        self.bgWhiteBtn.enabled = NO;
        [self.bgBlueBtn setImage:[UIImage imageNamed:@"cb_glossy_on"] forState:UIControlStateNormal];
    }else{
        self.bgRedBtn.enabled = YES;
        self.bgBlackBtn.enabled = YES;
        self.bgGreenBtn.enabled = YES;
        self.bgBrownBtn.enabled = YES;
        self.bgWhiteBtn.enabled = YES;
        [self.bgBlueBtn setImage:[UIImage imageNamed:@"cb_glossy_off"] forState:UIControlStateNormal];
    }

}

- (IBAction)bcGreenClick:(id)sender {
    self.backgroundColor = @"green";
    static int i = 0;
    i++;
    if (i % 2 == 1) {
        self.bgRedBtn.enabled = NO;
        self.bgBlackBtn.enabled = NO;
        self.bgBlueBtn.enabled = NO;
        self.bgBrownBtn.enabled = NO;
        self.bgWhiteBtn.enabled = NO;
        [self.bgGreenBtn setImage:[UIImage imageNamed:@"cb_glossy_on"] forState:UIControlStateNormal];
    }else{
        self.bgRedBtn.enabled = YES;
        self.bgBlackBtn.enabled = YES;
        self.bgBlueBtn.enabled = YES;
        self.bgBrownBtn.enabled = YES;
        self.bgWhiteBtn.enabled = YES;
        [self.bgGreenBtn setImage:[UIImage imageNamed:@"cb_glossy_off"] forState:UIControlStateNormal];
    }

}

- (IBAction)bcBrownClick:(id)sender {
    self.backgroundColor = @"brown";
    static int i = 0;
    i++;
    if (i % 2 == 1) {
        self.bgRedBtn.enabled = NO;
        self.bgBlackBtn.enabled = NO;
        self.bgBlueBtn.enabled = NO;
        self.bgGreenBtn.enabled = NO;
     
        self.bgWhiteBtn.enabled = NO;
        [self.bgBrownBtn setImage:[UIImage imageNamed:@"cb_glossy_on"] forState:UIControlStateNormal];
    }else{
        self.bgRedBtn.enabled = YES;
        self.bgBlackBtn.enabled = YES;
        self.bgBlueBtn.enabled = YES;
        self.bgGreenBtn.enabled = YES;
       
        self.bgWhiteBtn.enabled = YES;
        [self.bgBrownBtn setImage:[UIImage imageNamed:@"cb_glossy_off"] forState:UIControlStateNormal];
    }

}

- (IBAction)moveClick:(id)sender {
    self.isMoving = YES;
    static int i = 0;
    i++;
    if (i % 2 == 1) {
        self.stillBtn.enabled = NO;
      
        [self.moveBtn setImage:[UIImage imageNamed:@"cb_glossy_on"] forState:UIControlStateNormal];
    }else{
        self.stillBtn.enabled = YES;
        
        [self.moveBtn setImage:[UIImage imageNamed:@"cb_glossy_off"] forState:UIControlStateNormal];
    }

    
}

- (IBAction)stillClick:(id)sender {
    self.isMoving = NO;
    static int i = 0;
    i++;
    if (i % 2 == 1) {
        self.moveBtn.enabled = NO;
        
        [self.stillBtn setImage:[UIImage imageNamed:@"cb_glossy_on"] forState:UIControlStateNormal];
    }else{
        self.moveBtn.enabled = YES;
        
        [self.stillBtn setImage:[UIImage imageNamed:@"cb_glossy_off"] forState:UIControlStateNormal];
    }
}

- (IBAction)landscapeClick:(id)sender {
    self.isV = YES;
    static int i = 0;
    i++;
    if (i % 2 == 1) {
        self.verticalBtn.enabled = NO;
        
        [self.landScapeBtn setImage:[UIImage imageNamed:@"cb_glossy_on"] forState:UIControlStateNormal];
    }else{
        self.verticalBtn.enabled = YES;
        
        [self.landScapeBtn setImage:[UIImage imageNamed:@"cb_glossy_off"] forState:UIControlStateNormal];
    }
}

- (IBAction)verticalClick:(id)sender {
    self.isV = NO;
    static int i = 0;
    i++;
    if (i % 2 == 1) {
        self.landScapeBtn.enabled = NO;
        
        [self.verticalBtn setImage:[UIImage imageNamed:@"cb_glossy_on"] forState:UIControlStateNormal];
    }else{
        self.landScapeBtn.enabled = YES;
        
        [self.verticalBtn setImage:[UIImage imageNamed:@"cb_glossy_off"] forState:UIControlStateNormal];
    }
}
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    [self.textFileld resignFirstResponder];
    [self.speedFiled resignFirstResponder];
}
@end
