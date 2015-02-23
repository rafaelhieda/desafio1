//
//  Question.m
//  Desafio1
//
//  Created by Rafael  Hieda on 23/02/15.
//  Copyright (c) 2015 Rafael Hieda. All rights reserved.
//

#import "Question.h"

@implementation Question

@synthesize pergunta, resposta;

-(instancetype) initWithPergunta:(NSString *) question andResposta:(NSString *) answer
{
    self = [super init];
    if(self)
    {
        self->pergunta = question;
        self->resposta = answer;
    }
    return self;
}

@end
