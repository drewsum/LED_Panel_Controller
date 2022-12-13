
#include <xc.h>
#include <stdio.h>
#include <string.h>

#include "terminal_control.h"

// This function clears the terminal
void terminalClearScreen(void) {
    printf("\033[2J");
}

// This function moves the terminal cursor to top left corner
void terminalSetCursorHome(void) {
    printf("\033[H");
}

// This function clears the line the cursor is currently at on the terminal
void terminalClearLine(void) {
    printf("\033[K");
}

// This function saves the current cursor position on the terminal
void terminalSaveCursor(void) {
    printf("\033[s");
}

// This function returns the cursor to saved position on terminal
void terminalReturnCursor(void) {
    printf("\033[u");
}

// Text attributes function
// See attributes enums in "USB_UART.h"
// Call like so:
/*

    USB_UART_textAttributes(<TEXT COLOR (ALL CAPS)>, 
                            <BACKGROUND COLOR (ALL CAPS)>, 
                            <TEXT EFFECT (ALL CAPS)>);

*/

void terminalTextAttributes(char * foreground_color,
        char * background_color,
        char * input_attribute) {
    
    char print_string[16];
    
    // Null print string
    uint8_t i;
    for (i = 0; i < sizeof(print_string); i++) {
     
        print_string[i] = '\0';
        
    }
    
    strncpy(print_string, "\033[", sizeof(print_string));
   
    strcat(print_string, input_attribute);
    
    strcat(print_string,";3");
   
    strcat(print_string, foreground_color);
    
    strcat(print_string,";4");
    
    strcat(print_string, background_color);
    
    strcat(print_string,"m");
    
    printf(print_string);
    
}

// Reset text attributes to white text, black background, no effects
void terminalTextAttributesReset(void) {
 
    // USB_UART_textAttributes(WHITE, BLACK, NORMAL);
    printf("\033[0;37;40m");
    
}

// tests all the function written for this example
void terminalPrintTestMessage(void) {
    
    // Set starting text color white, background black, no fancy stuff
    // Print COM port settings
    terminalTextAttributesReset();
    terminalClearScreen();
    terminalSetCursorHome();
    printf("USB UART Test\n\r\n\r");
//    printf("COM Port Settings:\n\r");
//    printf("    Baud Rate: %s\n\r", USB_UART_BAUD_RATE_STR);
//    printf("    Data Length: %s\n\r", USB_UART_DATA_LENGTH_STR);
//    printf("    Parity: %\n\r", USB_UART_PARITY_STR);
//    printf("    Stop Bits: %s\n\r", USB_UART_STOP_BITS_STR);
//    printf("    Flow Control: %s\n\r\n\r", USB_UART_FLOW_CONTROL_STR);
        
    // Test text attributes
    printf("Testing text attributes:\n\r");

    // Print some black text
    terminalTextAttributesReset();
    terminalTextAttributes(BLACK_COLOR, WHITE_COLOR, NORMAL_FONT);
    printf("This text is black\n\r");

    terminalTextAttributesReset();
    terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("This text is red\n\r");

    terminalTextAttributesReset();
    terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("This text is green\n\r");

    terminalTextAttributesReset();
    terminalTextAttributes(YELLOW_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("This text is yellow\n\r");

    terminalTextAttributesReset();
    terminalTextAttributes(BLUE_COLOR, WHITE_COLOR, NORMAL_FONT);
    printf("This text is blue\n\r");

    terminalTextAttributesReset();
    terminalTextAttributes(MAGENTA_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("This text is magenta\n\r");

    terminalTextAttributesReset();
    terminalTextAttributes(CYAN_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("This text is cyan\n\r");
    
    terminalTextAttributesReset();
    terminalTextAttributes(WHITE_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("This text has a black background\n\r");
    
    terminalTextAttributesReset();
    terminalTextAttributes(BLACK_COLOR, RED_COLOR, NORMAL_FONT);
    printf("This text has a red background\n\r");

    terminalTextAttributesReset();
    terminalTextAttributes(BLACK_COLOR, GREEN_COLOR, NORMAL_FONT);
    printf("This text has a green background\n\r");
    
    terminalTextAttributesReset();
    terminalTextAttributes(BLACK_COLOR, YELLOW_COLOR, NORMAL_FONT);
    printf("This text has a yellow background\n\r");
    
    terminalTextAttributesReset();
    terminalTextAttributes(WHITE_COLOR, BLUE_COLOR, NORMAL_FONT);
    printf("This text has a blue background\n\r");
    
    terminalTextAttributesReset();
    terminalTextAttributes(BLACK_COLOR, MAGENTA_COLOR, NORMAL_FONT);
    printf("This text has a magenta background\n\r");
    
    terminalTextAttributesReset();
    terminalTextAttributes(BLACK_COLOR, CYAN_COLOR, NORMAL_FONT);
    printf("This text has a cyan background\n\r");
    
    terminalTextAttributesReset();
    terminalTextAttributes(BLACK_COLOR, WHITE_COLOR, NORMAL_FONT);
    printf("This text has a white background\n\r");
    
    terminalTextAttributesReset();
    terminalTextAttributes(WHITE_COLOR, BLACK_COLOR, BOLD_FONT);
    printf("This text is bold\n\r");

    terminalTextAttributesReset();
    terminalTextAttributes(WHITE_COLOR, BLACK_COLOR, UNDERSCORE_FONT);
    printf("This text is underscored\n\r");

    terminalTextAttributesReset();
    terminalTextAttributes(WHITE_COLOR, BLACK_COLOR, BLINK_FONT);
    printf("This text is blinking\n\r");

    terminalTextAttributesReset();
    terminalTextAttributes(WHITE_COLOR, BLACK_COLOR, REVERSE_FONT);
    printf("This text is reversed\n\r");

    terminalTextAttributesReset();
    printf("This text is normal\n\r\n\r");
    
    terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("Finished test message, type 'Help' for list of commands\n\r\n\r");
    terminalTextAttributesReset();

}// this function sets the window title of remote terminal
void terminalSetTitle(char * title_string) {
 
    printf("\033]0;%s\007", title_string);
    
}