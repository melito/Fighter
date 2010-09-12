//
//  ContactWatcher.mm
//  Fighter
//
//  Created by Mel Gray on 8/9/10.
//  Copyright 2010 Clever Collie, LLC. All rights reserved.
//

#import "ContactWatcher.h"

ContactWatcher::ContactWatcher() : _contacts() {}
ContactWatcher::~ContactWatcher() {}


void ContactWatcher::BeginContact(b2Contact* contact) { 
	// We need to copy out the data because the b2Contact passed in
    // is reused.
    ContactCollision myContact = { contact->GetFixtureA(), contact->GetFixtureB() };
    _contacts.push_back(myContact);
	
}

void ContactWatcher::EndContact(b2Contact* contact){ 
    ContactCollision myContact = { contact->GetFixtureA(), contact->GetFixtureB() };
    std::vector<ContactCollision>::iterator pos;
    pos = std::find(_contacts.begin(), _contacts.end(), myContact);
    if (pos != _contacts.end()) {
        _contacts.erase(pos);
    }
}

void ContactWatcher::PreSolve(b2Contact* contact, const b2Manifold* oldManifold){ }

void ContactWatcher::PostSolve(b2Contact* contact, const b2ContactImpulse* impulse) { }