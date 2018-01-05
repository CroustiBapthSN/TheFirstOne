   //
//  Person.m
//  TableViewTest
//
//  Created by SNCFDev on 08/12/2017.
//  Copyright © 2017 SNCFDev. All rights reserved.
//

#import "Person.h"

@implementation Person
- (id) init{
    return self;
}

- (void) setNom:(NSString*) nouveauNom{
    nom = [nouveauNom uppercaseString];
}

- (void) setPrenom:(NSString*) nouveauPrenom{
    prenom = nouveauPrenom;
}

- (void) setAge:(int) newAge{
    age = newAge;
}

- (void) setColor:(NSString*)nouvelleCouleur{
    color = nouvelleCouleur;
}

- (NSString *) getNom{
    return nom;
}

- (NSString *) getPrenom{
    return prenom;
}

- (int) getAge{
    return age;
}

- (NSString *) getColor{
    return color;
}

@end
