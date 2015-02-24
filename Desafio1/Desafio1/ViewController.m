//
//  ViewController.m
//  Desafio1
//
//  Created by Rafael  Hieda on 23/02/15.
//  Copyright (c) 2015 Rafael Hieda. All rights reserved.
//

#import "ViewController.h"


@implementation ViewController
@synthesize labelPergunta, labelResposta, arrayQuestoes, counter, imageViewResposta, arrayImagens;
- (void)viewDidLoad {
    [self initQuestions];
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)buttonPergunta:(id)sender {
    [labelPergunta setText:[arrayQuestoes[counter] pergunta]];
    flag = true;
    [labelResposta setText: @"???"];// flag para garantir que o contador não saia e fique em descompasso com a resposta, quando apertar a buttonResposta
}

- (IBAction)buttonResposta:(id)sender {
    
    if(flag)
    {
        [labelResposta setText: [arrayQuestoes[counter]resposta]];
        [imageViewResposta setImage: [UIImage imageNamed: arrayImagens[counter]]];
        counter++;
        flag = false;
    }
    if(counter >=3 && flag == false)
        counter = 0;
}

#pragma mark

-(void)initQuestions
{
   
    flag = false;
    counter = 0;
    arrayQuestoes = [[NSMutableArray alloc]init];
    arrayImagens = [[NSMutableArray alloc] init];
    arrayQuestoes[0] = [[Question alloc]initWithPergunta: @"Que ano estamos?" andResposta: @"2015"];
    arrayImagens[0] =  @"2015.jpg";
    arrayQuestoes[1] = [[Question alloc]initWithPergunta: @"Qual nome do estado que moro?" andResposta: @"São Paulo"];
    arrayImagens[1] = @"sp.jpg";
    arrayQuestoes[2] = [[Question alloc]initWithPergunta: @"Onde estudo?" andResposta: @"Mackenzie"];
    arrayImagens[2] = @"mack.jpg";

    
}
@end
