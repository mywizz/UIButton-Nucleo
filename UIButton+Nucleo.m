//
// UIButton+Nucleo.m
//
// Copyright © 2016 Yunseok Kim <mywizz@gmail.com>
//
// This work is free. You can redistribute it and/or modify it under the
// terms of the Do What The Fuck You Want To Public License, Version 2,
// as published by Sam Hocevar. See http://www.wtfpl.net/ for more details.


#import "UIButton+Nucleo.h"


/**
 *  Nucleo font name
 */
static NSString * kNucleoFontName = @"icomoon";


// ---------------------------------------------------------------------
#pragma mark -
#pragma mark UIButton (Nucleo)

@implementation UIButton (Nucleo)

+ (instancetype)buttonWithNucleoCode:(unsigned short)code buttonSize:(CGSize)buttonSize iconSize:(CGSize)iconSize
{
	UIButton *button = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, buttonSize.width, buttonSize.height) nucleoCode:code preferredSize:iconSize];
	
	return button;
}

+ (instancetype)buttonWithNucleoCode:(unsigned short)code size:(CGSize)size
{
	UIButton *button = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, size.width, size.height) nucleoCode:code preferredSize:size];
	
	return button;
}

- (instancetype)initWithFrame:(CGRect)frame nucleoCode:(unsigned short)code preferredSize:(CGSize)size
{
	self = [self initWithFrame:frame];
	if (self)
	{
		NSString *character = [NSString stringWithFormat:@"%C", code];
		CGSize sz = CGSizeZero;
		CGFloat fontSize = 5;
		UIFont *fontToTry;
		while (YES)
		{
			fontSize += 1;
			fontToTry = [UIFont fontWithName:kNucleoFontName size:fontSize];
			
			NSAssert(fontToTry != nil, @"Font cannot be nil.");
			
			NSDictionary *attr = @{NSFontAttributeName : fontToTry};
			CGRect rect = [character boundingRectWithSize:size options:NSStringDrawingUsesLineFragmentOrigin attributes:attr context:nil];
			sz = rect.size;
			
			if ( (sz.height >= size.height) || (sz.width >= size.width) )
			{
				break;
			}
		}
		
		self.titleLabel.font = [UIFont fontWithName:kNucleoFontName size:fontSize];
		self.contentVerticalAlignment = UIControlContentVerticalAlignmentCenter;
		
		[self setShowsTouchWhenHighlighted:NO];
		[self setTitle:character forState:UIControlStateNormal];
	}
	return self;
}

@end
