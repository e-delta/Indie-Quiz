//
//  IQViewController.m
//  Indie Quiz
//
//  Created by Huey on 12/17/13.
//  Copyright (c) 2013 Huey. All rights reserved.
//

#import "IQViewController.h"

@interface IQViewController ()

@end

@implementation IQViewController

@synthesize QuoteView;
@synthesize quote;

- (void)viewDidLoad
{
    [super viewDidLoad];
    quote.numberOfLines = 5;
    quoteArray = [NSMutableArray new];
    [quoteArray addObject:@"True art is characterized by an irresistible urge in the creative artist."];
    [quoteArray addObject:@"Don't cry because it's over, smile because it happened."];
    [quoteArray addObject:@"Two things are infinite: the universe and human stupidity; and I'm not sure about the universe."];
    [quoteArray addObject:@"You know you're in love when you can't fall asleep because reality is finally better than your dreams."];
    [quoteArray addObject:@"A room without books is like a body without a soul."];
    [quoteArray addObject:@"In three words I can sum up everything I've learned about life: it goes on."];
    [quoteArray addObject:@"If you tell the truth, you don't have to remember anything."];
    [quoteArray addObject:@"Always forgive your enemies; nothing annoys them so much."];
    [quoteArray addObject:@"Live as if you were to die tomorrow. Learn as if you were to live forever."];
    [quoteArray addObject:@"Without music, life would be a mistake."];
    [quoteArray addObject:@"To live is the rarest thing in the world. Most people exist, that is all."];
    [quoteArray addObject:@"It is better to be hated for what you are than to be loved for what you are not."];
    [quoteArray addObject:@"Life is what happens to you while you're busy making other plans."];
    [quoteArray addObject:@"All I know is that I know nothing"];

}

- (NSString *)genRandQuote
{
    int r = rand();
    NSInteger i  = r % quoteArray.count;
    
    return [quoteArray objectAtIndex:i];
}

- (IBAction)randomQuote:(id)sender
{
    quote.text = [self genRandQuote];
}
@end
