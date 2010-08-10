//
//  ContactWatcher.h
//  Fighter
//
//  Created by Mel Gray on 8/9/10.
//  Copyright 2010 Clever Collie, LLC. All rights reserved.
//

#import "Box2D.h"
#import <vector>
#import <algorithm>

struct ContactCollision {
    b2Fixture *fixtureA;
    b2Fixture *fixtureB;
    bool operator==(const ContactCollision& other) const
    {
        return (fixtureA == other.fixtureA) && (fixtureB == other.fixtureB);
    }
};


class ContactWatcher : public b2ContactListener {
	
public:
	std::vector<ContactCollision>_contacts;

	ContactWatcher();
	~ContactWatcher();
		
	virtual void BeginContact(b2Contact* contact);
	virtual void EndContact(b2Contact* contact);
	virtual void PreSolve(b2Contact* contact, const b2Manifold* oldManifold);
	virtual void PostSolve(b2Contact* contact, const b2ContactImpulse* impulse);
};