/* ************************************************************************** */
/** Terminal Control Functions for serial terminals
 */
/* ************************************************************************** */

#ifndef _TERMINAL_CONTROL_H    /* Guard against multiple inclusion */
#define _TERMINAL_CONTROL_H

// these macros define strings for terminal font manipulation
#define NORMAL_FONT          "0"
#define BOLD_FONT            "1"
#define UNDERSCORE_FONT      "4"
#define BLINK_FONT           "5"
#define REVERSE_FONT         "7"
#define CONCEALED_FONT       "8"

#define BLACK_COLOR         "0"
#define RED_COLOR           "1"
#define GREEN_COLOR         "2"
#define YELLOW_COLOR        "3"
#define BLUE_COLOR          "4"
#define MAGENTA_COLOR       "5"
#define CYAN_COLOR          "6"
#define WHITE_COLOR         "7"

// Enumeration holding attributes data for setting text fanciness
//typedef enum {
//    
//    NORMAL_FONT,
//    BOLD_FONT,
//    UNDERSCORE_FONT,
//    BLINK_FONT,
//    REVERSE_FONT,
//    CONCEALED_FONT
//            
//} text_attribute_t;

// Enumeration for setting text color attributes
//typedef enum {
//    
//    BLACK_COLOR,
//    RED_COLOR,
//    GREEN_COLOR,
//    YELLOW_COLOR,
//    BLUE_COLOR,
//    MAGENTA_COLOR,
//    CYAN_COLOR,
//    WHITE_COLOR
//            
//} text_color_t;

// Terminal manipulation functions
void terminalClearScreen(void);  // clears the whole terminal
void terminalSetCursorHome(void);  // Sets cursor to home position (top left)
void terminalClearLine(void);      // clears the current line where the cursor appears
void terminalSaveCursor(void);     // Saves the current position of the cursor
void terminalReturnCursor(void);   // Returns the cursor to saved position

// Text attributes function
void terminalTextAttributes(char * foreground_color,
        char * background_color,
        char * input_attribute);

// Reset to white foreground, black background, no fancy stuff
void terminalTextAttributesReset(void);

// This function tests terminal control
void terminalPrintTestMessage(void);

// this function sets the window title of remote terminal
void terminalSetTitle(char * title_string);



#endif /* _TERMINAL_CONTROL_H */

/* *****************************************************************************
 End of File
 */
