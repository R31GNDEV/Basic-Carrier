
#include "fuckedupheaders.h"

NSUserDefaults *_preferences;
BOOL _enabled;

%hook _UIStatusBarStringView

-(void)setAlternateText:(NSString *)arg1 { 
self.text = [_preferences objectForKey:@"setText"];
}

%end

%ctor {
	_preferences = [[NSUserDefaults alloc] initWithSuiteName:@"gay.kota.basiccarrier"];
	[_preferences registerDefaults:@{
		@"enabled" : @YES,
	}];
	_enabled = [_preferences boolForKey:@"enabled"];
	if(_enabled) {
		NSLog(@"[Basic Carrier] Enabled");
		%init();
	} else {
		NSLog(@"[Basic Carrier] Disabled, bye!");
	}
}