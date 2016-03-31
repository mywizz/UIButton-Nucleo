//
// UIButton+Nucleo.h
//
// Copyright © 2016 Yunseok Kim <mywizz@gmail.com>
//
// This work is free. You can redistribute it and/or modify it under the
// terms of the Do What The Fuck You Want To Public License, Version 2,
// as published by Sam Hocevar. See http://www.wtfpl.net/ for more details.


@interface UIButton (Nucleo)

/**
 *  Creates `UIButton` from character code and preferred frame/icon size
 *
 *  @param code Nucleo font character code
 *  @param size Preferred frame size
 *
 *  @return `UIButton` instance
 */
+ (instancetype)buttonWithNucleoCode:(unsigned short)code size:(CGSize)size;

/**
 *  Creates `UIButton` from character code, button size and icon size
 *
 *  @param code       Nucleo font character code
 *  @param buttonSize size of button
 *  @param iconSize   size of icon
 *
 *  @return `UIButton` instance
 */
+ (instancetype)buttonWithNucleoCode:(unsigned short)code buttonSize:(CGSize)buttonSize iconSize:(CGSize)iconSize;

/**
 *  Creates `UIButton` from character code, button size and icon size
 *
 *  @param frame frame of button
 *  @param code  Nucleo font character code
 *  @param size  Preferred icon size
 *
 *  @return `UIButton` instance
 */
- (instancetype)initWithFrame:(CGRect)frame nucleoCode:(unsigned short)code preferredSize:(CGSize)size;

@end
