//
//  main.m
//  ThreeLow
//
//  Created by Sean Chien on 2019-08-08.
//  Copyright © 2019 Sean Chien. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputHandler.h"
#import "Dice.h"
#import "GameController.h"

int main(int argc, const char * argv[])
{
    @autoreleasepool
    {
        Boolean gameOn = YES;
        
        InputHandler *inputHandler =[InputHandler new];
        GameController *gameController = [GameController new];
        
        while(gameOn)
        {
            
            //NSMutableString *userInput = [NSMutableString stringWithString: getUserInput (@"please hold dice's index")];
            NSLog(@"\n List of commands: \n1 - Roll\n2 - Holds\n3 - Un-Holds\n4 - Reset\n5 - Reset LS\n6 - Quit");
            NSString *userInput = [inputHandler stringConvert:@"\n Please enter a command:"];
            if([userInput  isEqualToString: @"Roll"] || [userInput isEqualToString: @"1"])
            {
                if([gameController.numberOfRoll integerValue] >=5)
                {
                    NSLog(@"\n Please enter reset to continue. your rolled 5 time already \n");
                } else
                {
                    for(int i=0;i < 5;i++)
                    {
                        if([[gameController holdRoll] containsObject: [gameController setOfDice][i]])
                        {
                            NSLog(@"[%@]",[gameController setOfDice][i].currentNumber);
                        } else
                        {
                            [gameController setOfDice][i] = [Dice new];
                            NSLog(@"%@",[gameController setOfDice][i].currentNumber);
                        }
                    }
                    [gameController score];
                    gameController.numberOfRoll = @([gameController.numberOfRoll integerValue]+1);
                    
                    NSLog(@"\n You rolled %@ since your last reset",gameController.numberOfRoll);
                }
            } else if ([userInput isEqualToString: @"Holds"] || [userInput isEqualToString: @"2"])
            {
                NSString *numberHold = [inputHandler stringConvert:@"Hold dice number: "];
                [gameController holdDie:[numberHold integerValue]];
                NSLog(@"⚁");
            } else if ([userInput isEqualToString: @"Un-Holds"] || [userInput isEqualToString: @"3"])
            {
                NSString *numberHold = [inputHandler stringConvert:@"Un-Hold dice number: "];
                NSLog(@"⚂");
                for(int i=0; i<5;i++)
                {
                    if(i == [numberHold integerValue] )
                    {
                        if([[gameController holdRoll] containsObject:[gameController setOfDice][i - 1]])
                        {
                            [[gameController holdRoll] removeObject:[gameController setOfDice][i - 1]];
                        } else
                        {
                            NSLog(@"This dice is not hold");
                        }
                    }
                }
            } else if ([userInput isEqualToString: @"Reset"] || [userInput isEqualToString: @"4"])
            {
                [gameController reset];
                NSLog(@"⚃");
            } else if ([userInput isEqualToString:@"Reset LS"] || [userInput isEqualToString: @"5"])
            {
                [gameController resetLowestScore];
                NSLog(@"⚄");
            } else if ([userInput isEqualToString:@"Quit"] || [userInput isEqualToString: @"6"])
            {
                [gameController Ending];
                NSLog(@"⚅");
                break;
            }
            NSLog(@"\n Score to beat: %@ \n",gameController.lowestScore);
        }
    }
    return 0;
}
