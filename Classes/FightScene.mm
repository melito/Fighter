//
//  HelloWorldScene.mm
//  Fighter
//
//  Created by Mel Gray on 7/7/10.
//  Copyright Clever Collie, LLC 2010. All rights reserved.
//


// Import the interfaces
#import "FIghtScene.h"

//Pixel to metres ratio. Box2D uses metres as the unit for measurement.
//This ratio defines how many pixels correspond to 1 Box2D "metre"
//Box2D is optimized for objects of 1x1 metre therefore it makes sense
//to define the ratio so that your most common object type is 1x1 metre.
#define PTM_RATIO 32

// enums that will be used as tags
enum {
	kTagTileMap = 1,
	kTagSpriteSheet = 1,
	kTagAnimation1 = 1,
};


// HelloWorld implementation
@implementation FightScene

+(id) scene
{
	// 'scene' is an autorelease object.
	CCScene *scene = [CCScene node];
	
	// 'layer' is an autorelease object.
	FightScene *layer = [FightScene node];
	
	// add layer as a child to scene
	[scene addChild: layer];
	
	// return the scene
	return scene;
}

// initialize your instance here
-(id) init
{
	if( (self=[super init])) {
		
		// enable touches
		self.isTouchEnabled = YES;
		
		// enable accelerometer
		self.isAccelerometerEnabled = YES;
		
		CGSize screenSize = [CCDirector sharedDirector].winSize;
		CCLOG(@"Screen width %0.2f screen height %0.2f",screenSize.width,screenSize.height);
		
		// Define the gravity vector.
		b2Vec2 gravity;
		gravity.Set(0.0f, -10.0f);
		
		// Do we want to let bodies sleep?
		// This will speed up the physics simulation
		bool doSleep = true;
		
		// Construct a world object, which will hold and simulate the rigid bodies.
		world = new b2World(gravity, doSleep);
		
		world->SetContinuousPhysics(true);
		
		// Debug Draw functions
		m_debugDraw = new GLESDebugDraw( PTM_RATIO );
		world->SetDebugDraw(m_debugDraw);
		
		uint32 flags = 0;
		flags += b2DebugDraw::e_shapeBit;
//		flags += b2DebugDraw::e_jointBit;
//		flags += b2DebugDraw::e_aabbBit;
//		flags += b2DebugDraw::e_pairBit;
//		flags += b2DebugDraw::e_centerOfMassBit;
		m_debugDraw->SetFlags(flags);		
		
		
		// Define the ground body.
		b2BodyDef groundBodyDef;
		groundBodyDef.position.Set(0, 0); // bottom-left corner
		
		// Call the body factory which allocates memory for the ground body
		// from a pool and creates the ground box shape (also from a pool).
		// The body is also added to the world.
		b2Body* groundBody = world->CreateBody(&groundBodyDef);
		
		// Define the ground box shape.
		b2PolygonShape groundBox;		
		
		// bottom
		groundBox.SetAsEdge(b2Vec2(0,0), b2Vec2(screenSize.width/PTM_RATIO,0));
		groundBody->CreateFixture(&groundBox,0);
		
		// top
		groundBox.SetAsEdge(b2Vec2(0,screenSize.height/PTM_RATIO), b2Vec2(screenSize.width/PTM_RATIO,screenSize.height/PTM_RATIO));
		groundBody->CreateFixture(&groundBox,0);
		
		// left
		groundBox.SetAsEdge(b2Vec2(0,screenSize.height/PTM_RATIO), b2Vec2(0,0));
		groundBody->CreateFixture(&groundBox,0);
		
		// right
		groundBox.SetAsEdge(b2Vec2(screenSize.width/PTM_RATIO,screenSize.height/PTM_RATIO), b2Vec2(screenSize.width/PTM_RATIO,0));
		groundBody->CreateFixture(&groundBox,0);
	
	
		[self createCharacterFrom:@"Fighter" withCoords:CGPointMake(screenSize.width/2, screenSize.height/2)];
		
		babycount = 0;
		[self schedule: @selector(tick:)];
				
	
	}
	return self;
}

-(void)createCharacterFrom:(NSString *)class_string withCoords:(CGPoint)coords {
	
	fighter = [[Fighter alloc] init];
	fighter.position = ccp(coords.x, coords.y);
	
	//id character = [[NSClassFromString(class_string) alloc] init];
	//NSLog(@"%@", character);
	
	b2BodyDef characterBody;
	characterBody.type = b2_dynamicBody;
	characterBody.userData = fighter;
	characterBody.position.Set(fighter.position.x/PTM_RATIO, fighter.position.y/PTM_RATIO);

	
	b2PolygonShape characterShape;
	characterShape.SetAsBox(([fighter contentSize].width/PTM_RATIO)/2, ([fighter contentSize].height/PTM_RATIO)/2);
	
	
	b2FixtureDef fixture;
	fixture.shape = &characterShape;
	fixture.density = fighter.density;
	fixture.friction = fighter.friction;
	NSLog(@"Density: %f Friction: %f", fighter.density, fighter.friction);

	
	b2Body *body = world->CreateBody(&characterBody);
	body->CreateFixture(&fixture);
	
	[self addChild:fighter];
}

-(void)createBabyFrom:(NSString *)class_string withCoords:(CGPoint)coords {
	
	Baby *baby = [[Baby alloc] init];
	baby.position = ccp(coords.x, coords.y);
	
	//id character = [[NSClassFromString(class_string) alloc] init];
	//NSLog(@"%@", character);
	
	b2BodyDef characterBody;
	characterBody.type = b2_dynamicBody;
	characterBody.userData = baby;
	characterBody.position.Set(baby.position.x/PTM_RATIO, baby.position.y/PTM_RATIO);
	
	
	b2PolygonShape characterShape;
	characterShape.SetAsBox(([baby contentSize].width/PTM_RATIO)/2, ([baby contentSize].height/PTM_RATIO)/2);
	
	b2FixtureDef fixture;
	fixture.shape = &characterShape;
	fixture.density = baby.density;
	fixture.friction = baby.friction;
	NSLog(@"Density:%f Friction:%f", baby.density, baby.friction);
	
	b2Body *body = world->CreateBody(&characterBody);
	body->CreateFixture(&fixture);
	
	[self addChild:baby];
}

-(void) draw
{
	// Default GL states: GL_TEXTURE_2D, GL_VERTEX_ARRAY, GL_COLOR_ARRAY, GL_TEXTURE_COORD_ARRAY
	// Needed states:  GL_VERTEX_ARRAY, 
	// Unneeded states: GL_TEXTURE_2D, GL_COLOR_ARRAY, GL_TEXTURE_COORD_ARRAY
	glDisable(GL_TEXTURE_2D);
	glDisableClientState(GL_COLOR_ARRAY);
	glDisableClientState(GL_TEXTURE_COORD_ARRAY);
	
	//world->DrawDebugData();
	
	// restore default GL states
	glEnable(GL_TEXTURE_2D);
	glEnableClientState(GL_COLOR_ARRAY);
	glEnableClientState(GL_TEXTURE_COORD_ARRAY);

}


-(void) tick: (ccTime) dt
{
		
	if (babycount < 20) {
		[self throwABaby];
		babycount += 1;
	}
	
	//It is recommended that a fixed time step is used with Box2D for stability
	//of the simulation, however, we are using a variable time step here.
	//You need to make an informed choice, the following URL is useful
	//http://gafferongames.com/game-physics/fix-your-timestep/
	
	int32 velocityIterations = 8;
	int32 positionIterations = 1;
	
	// Instruct the world to perform a single step of simulation. It is
	// generally best to keep the time step and iterations fixed.
	world->Step(dt, velocityIterations, positionIterations);

	
	//Iterate over the bodies in the physics world
	for (b2Body* b = world->GetBodyList(); b; b = b->GetNext())
	{
		if (b->GetUserData() != NULL) {
			//Synchronize the AtlasSprites position and rotation with the corresponding body
			CCSprite *myActor = (CCSprite*)b->GetUserData();
			myActor.position = CGPointMake( b->GetPosition().x * PTM_RATIO, b->GetPosition().y * PTM_RATIO);
			myActor.rotation = -1 * CC_RADIANS_TO_DEGREES(b->GetAngle());
		}	
	}
}

-(void)throwABaby {
	[self createBabyFrom:@"Baby" withCoords:CGPointMake(100, 100)];
}

- (void)ccTouchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
	[fighter click];
}

- (void)accelerometer:(UIAccelerometer*)accelerometer didAccelerate:(UIAcceleration*)acceleration
{	
	static float prevX=0, prevY=0;
	
	//#define kFilterFactor 0.05f
	#define kFilterFactor 1.0f	// don't use filter. the code is here just as an example
	
	float accelX = (float) acceleration.x * kFilterFactor + (1- kFilterFactor)*prevX;
	float accelY = (float) acceleration.y * kFilterFactor + (1- kFilterFactor)*prevY;
	
	prevX = accelX;
	prevY = accelY;
	
	// accelerometer values are in "Portrait" mode. Change them to Landscape left
	// multiply the gravity by 10
	b2Vec2 gravity( -accelY * 10, accelX * 10);
	
	world->SetGravity( gravity );
}

// on "dealloc" you need to release all your retained objects
- (void) dealloc
{
	// in case you have something to dealloc, do it in this method
	delete world;
	world = NULL;
	
	delete m_debugDraw;

	[fighter dealloc];
	// don't forget to call "super dealloc"
	[super dealloc];
}
@end
