#!/usr/bin/env raku
# official name: "geeky glasses" (pronounced "geeky glassez"; as in "i wear geeky glasses", or "i need my geeky glasses", or "you need geeky glasses", or "dude, where's my geeky glasses?", because do you have the need? the need for read! the need to read is the subtle sequel that has no"-thing" to do c̄ the sesesequel, because it hasn't happened yet, and time travel is dangerous; my plots cause irl paradoxes!)
 # the foley is squeaky glasses
# official motto: "i know kung fu!!! :D" (man of chai tea readings)
# official usecases: slow reading (for comprehensional self-improvement), flashcards (for memorising an ordered list of lines; `shuf`), checklist (How to Beat Procrastination Like It Owes You Money; make the pain of inaction greater than the pain of action), ask chatgpt (file uploads),..
# todo: implement a sense of timing mechanism; both reading time, (maybe add a delay here, or multitasking, or task switching,..), and typing time
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
# flying picnic bedsheet, clouDY IGLOO, hagrids' "monkey" book (chapters on "spanking"), eagle 4eyed owls in flying bird formation, flying over a chocolate dessert (implying digital rain)
# my brain is ahead of its' ttime; the technology isn't ready for what i'm holding back, and probably never will be
# finger guns probably need uncensored gen "art"
# slow and steady wins the race, so a teenage mutant ninja squirtle coaster (4o is so much more useful than 4omini; flat disc to put cups on to protect surface? it's like having a robot do my exercise for me!!! :D) withdrawing from the sandy (bottom) bank (my search bubble doesn't include sandy bottoms -_- i have my doubts about genart)
# visual /nerdgasm|geekgasm|brainfart|../ thought bubble made of /water|soap|../ bubbles
# altden: sand castle (sand fireplace), tree house, under the tree, at the end of the rainbow, scuba, maid, two (concrete) shoes, goat eating the goat book (gboat), book worm undergrounden, pussy boxen, forest clearing, jungle book tree top, temple of reading,..
# temple of reading; we absorb like a sponge, we worship the book of (p)ages, vow of s(h)ilence (while speaking improves comprehension, it also slows us down; geeky glasses makes speaking redundant), in the grand calculus of the multivolume, book burning (yajna to the gods, and godesses, of reading; only the good ones? the good, and the bad; brahmagupta says no"-thing" < 0),..
# sacred places: reading den, library, bookshop, books (especially when reading; because our mind is in a sacred place),..
# neuroplasticity kicks in, while specifying in the small, and makes summarising in the large redundant; especially if s/geeky glasses/diff/ for reproducible builds (specifying in the large)
# not a temple of language; we don't care what those symbols mean, we just care they entered our brain, and we can regurgitate them in perfection #dotadiw #flow
# geeky glasses is /secretly|mystically/ training for /(cyber)terrorist|ass-as-sin|ninja/ one-liners; one-look + one-type (no \b, unless it's no err; no historical arrows, because typing makes you better #optimalist)
# i have an apple, i have a head, i have an arrow #dedication #total_immersion #inception
# my reading den is just an upsidedown sleeping bag, with the hood draped over my laptop; /firey|fire?ie/ pages
# telephonic smart candle light
# shower den (already did under the tree with floral reefs); tiling semi-cubic (in every way, shape, and/or form), /tablet|(waterproof|hydrophobic (sprayed)?|laminated) book/ (this one comes from generative porn; kneeling under shower prompts a half-height shower, and i read between the pixellated lines of pixels)
 # kneeling kitchden, cookbook edition #genporn
# googly eyes on (a pair of) sweet cheeks (the other pair; those aren't technically cheeks, a little further), with head buried in the godlen sandy book treasure(s)

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
