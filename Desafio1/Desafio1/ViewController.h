//
//  ViewController.h
//  Desafio1
//
//  Created by Rafael  Hieda on 23/02/15.
//  Copyright (c) 2015 Rafael Hieda. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Question.h"
@interface ViewController : UIViewController
{
    NSMutableArray *arrayQuestoes;
    NSMutableArray *arrayImagens;
    int counter;
    bool flag;
}

@property NSMutableArray *arrayQuestoes;
@property NSMutableArray *arrayImagens;
@property int counter;
@property (weak, nonatomic) IBOutlet UILabel *labelPergunta;
@property (weak, nonatomic) IBOutlet UILabel *labelResposta;
@property (weak, nonatomic) IBOutlet UIImageView *imageViewResposta;

- (void) initQuestions;
- (IBAction)buttonPergunta:(id)sender;
- (IBAction)buttonResposta:(id)sender;


@end

