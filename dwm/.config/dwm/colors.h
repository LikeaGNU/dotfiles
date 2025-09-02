/*
 * Colors
 */

#ifndef __COLORS_H__
#define __COLORS_H__

#define FULL_BLACK "#000000"
#define FULL_WHITE "#ffffff"

#define RAINBOW_RED "#c83f49"
#define RAINBOW_ORANGE "#fc8901"
#define RAINBOW_YELLOW "#ffe135"
#define RAINBOW_GREEN "#8ab800"
#define RAINBOW_BLUE "#4f86f7"
#define RAINBOW_INDIGO "#6011a2"
#define RAINBOW_VIOLET "#a20092"

#define BACKGROUND FULL_BLACK
#define FOREGROUND FULL_WHITE

/* tagging */
//static const char *tags[] = { "1", "2", "3", "4", "5", "6", "7" };          
static const char *tags[] = { "", "", "", "", "", "", "" };          


static const char *tagsel[][2] = {
  { RAINBOW_RED, 	BACKGROUND }, // Home
  { RAINBOW_ORANGE, 	BACKGROUND }, // RSS
  { FULL_WHITE, 	BACKGROUND }, // Envelope
  { RAINBOW_YELLOW, 	BACKGROUND }, // File
  { RAINBOW_BLUE, 	BACKGROUND }, // Note
  { RAINBOW_GREEN, 	BACKGROUND }, // Globe
  { RAINBOW_INDIGO, 	BACKGROUND }, // Lock
};

#endif
