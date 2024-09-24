#!/usr/bin/env raku
# motto "i know kung fu!!! :D"
# usecases: slow reading (for comprehensional self-improvement), flashcards (for memorising an ordered list of lines; `shuf`), checklist (How to Beat Procrastination Like It Owes You Money; make the pain of inaction greater than the pain of action),..
# todo: implement a sense of timing mechanism; both reading time, and typing time
# eta: when chatgpt4o returns (after i use it for future maybes; oh, nevermind, it's got a 3 hour delay already #jit!), and i remember
# make a new readingclub repo c̄ eupl @radical, but maybe call it reading.den (https://youtu.be/xfQM4cRXho8?t=13m37s) instead, or even reading.lib #tla #promptengineeringupskills
 # wū ai gen safe for work porn you can imagine @4o!!! :D
  # i could never find these, now i don't need to; i can have my cake, and eat it too
 # so the website will have prompt(reading den, cosy, pretty girls with lovely long hair curled up reading a book with a massive mug of tea next to them, oversized (like alice; alpha privative a?), chai, traffic out the window iff there is a window, imagination bleeding out of the pages versus i know kung fu versus whatnot,..)
# next ocr (next github will have a delay; then my system dies, and i lose every"-thing"!!! :D)
# todo: get colours, or formally assume black background (aka dark mode; debian gnome-disks version is white mode by defautl)
# maybe portranspile to lisp, and embed @browser; custom colours (default is dark mode, or whatever the hell goes well with the porn), fonts (default is OpenDyslexic), dimensions (hyperdefault), speed reader (default is mine; a real human),..
# jungle den in a canopy bush, with a chai mug topped by latte art, nerdy reading glasses (half /full|empty/, like a sailing semimoon monocle split by muhammad), aladdins' burning magic lamp (the whole "-thing" is on fire), carpet of "grass", with her ass, passing gas #waltzing_matilda_who_fucking_KILLED_her #CENSORESHIP
# finger gunning (fingering the latte artistic pussy (cat)), unbosomed, hermione, dickheaded worm in the apple ibook grow (from seed), shirt that says she has a "bearded lady" with an "arrow pointing down"

# Check if a filename is provided
my $msg = "Usage: $*PROGRAM <filename> <mode>\n";
my $filename = @*ARGS[0] or die $msg;
my $mode = @*ARGS[1].Int // die $msg;

# Open the file
my $fh = open $filename, :r or die "Cannot open file: $filename\n";

# Define ANSI escape codes for color and cursor manipulation
my $red        = "\e[31m"; # Red color #err
my $green      = "\e[32m"; # Green color #hogya
my $blue       = "\e[34m"; # Blue color #instructionectar
my $reset      = "\e[0m" ; # Reset color and style
my $clear_line = "\e[K"  ; # Clear the current line
my $move_up    = "\e[1A" ; # Move cursor up one line
my $clear      = "\ec"   ; # Clear screen
# https://en.wikipedia.org/wiki/ANSI_escape_code#External_links
# https://web.archive.org/web/20110525032501/http://ascii-table.com/ansi-escape-sequences.php

# anti-cheat-mode
print $clear;
# Start the loop to go through each line in the file
for $fh.lines -> $file-line {
 # Display the current line in blue
 prompt $blue ~ $file-line ~ $reset; # ~ "\\r?";

 # Prompt user to press Enter before continuing
 #prompt "Press Enter to start typing...";

 # Clear the line after Enter is pressed
 print $move_up ~ $clear_line; # ~ $move_up ~ $clear_line;

 # Now prompt the user to type the line
 my $user-line;
 loop {
  # Display a prompt for the user to type the line
  $user-line = prompt "";

  if $user-line eq $file-line {
   # Correct, break the loop and go to the next line
   if not $mode {
    print $move_up ~ $clear_line;
   }
   last;
  } else {
   print $move_up ~ $clear_line;

   # If lines are different, show a red error message
   prompt $red ~ "The lines are different. Try again. \\r?" ~ $reset; # ~ " \\r?";
   #print $red ~ "The lines are different. Try again." ~ $reset ~ "\n";
   #prompt "Press Enter to retry...";

   # Clear the error message and user input prompt
   print $move_up ~ $clear_line; # ~ $move_up ~ $clear_line;

   # Redisplay the current line in blue
   prompt $blue ~ $file-line ~ $reset; # ~ "\\r?";
   #print $blue ~ $file-line ~ $reset ~ "\n";
   #prompt "Press Enter to start typing...";
   print $move_up ~ $clear_line; # ~ $move_up ~ $clear_line;
  }
 }
}

# Close the file after reading all lines
$fh.close;

# End of program
print $green ~ "All lines matched. Well done!" ~ $reset ~ "\n";
exit 0;
