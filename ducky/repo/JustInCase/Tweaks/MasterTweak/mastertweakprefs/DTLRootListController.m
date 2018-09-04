#include "DTTRootListController.h"
#include "notify.h"

@implementation DTLRootListController

- (NSArray *)specifiers {
	if (!_specifiers) {
		_specifiers = [[self loadSpecifiersFromPlistName:@"ControlCenter" target:self] retain];
	}

	return _specifiers;
}

- (void)respring:(id)sender {
	notify_post("com.ducksrepo.mastertweak/respring");
}
@end
