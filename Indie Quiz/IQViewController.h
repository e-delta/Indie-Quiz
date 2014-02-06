//
//  IQViewController.h
//  Indie Quiz
//
//  Created by Huey on 12/17/13.
//  Copyright (c) 2013 Huey. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface IQViewController : UIViewController

{
    NSMutableArray *quoteArray;
}

@property (strong, nonatomic) IBOutlet UIView *QuoteView;

@property (strong, nonatomic) IBOutlet UILabel *quote;

@property (weak, nonatomic) IBOutlet UIImageView *background;

- (NSString *)genRandQuote;
- (IBAction)randomQuote:(id)sender;

@end
