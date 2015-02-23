//
//  Question.h
//  Desafio1
//
//  Created by Rafael  Hieda on 23/02/15.
//  Copyright (c) 2015 Rafael Hieda. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Question : NSObject

{
    NSString *pergunta;
    NSString *resposta;
}

@property NSString *pergunta;
@property NSString *resposta;

-(instancetype) initWithPergunta:(NSString *) question andResposta:(NSString *) answer;
@end
