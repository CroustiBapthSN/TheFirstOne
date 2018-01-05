//
//  Person.h
//  TableViewTest
//
//  Created by SNCFDev on 08/12/2017.
//  Copyright © 2017 SNCFDev. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
{
    
    NSString *nom;
    NSString *prenom;
    int *age;
    NSString *color;
    
}

- (id) init;
- (void) setNom:(NSString*) nouveauNom;
- (void) setPrenom:(NSString*) nouveauPrenom;
- (void) setAge:(int) age;
- (void) setColor:(NSString*) color;
- (NSString *) getNom;
- (NSString *) getPrenom;
- (int ) getAge;
- (NSString *) getColor;

@end
