#import "@preview/pinit:0.2.2": *

#set page(width: 200pt, height: 200pt, margin: 20pt)

#v(50pt)
#h(50pt) #pin(1) PIN (50, 50)

/*
Test 1: pinit-point-to with offset (20pt, 20pt)
If it is RELATIVE to the pin, it should be at (70, 70).
If it is ABSOLUTE to page, it should be at (20, 20).
*/
#pinit-point-to(1, offset-dx: 20pt, offset-dy: 20pt)[TO]

/*
Test 2: pinit-point-from with offset (20pt, 20pt)
If it is RELATIVE to the pin, it should be at (70, 70).
If it is ABSOLUTE to page, it should be at (20, 20).
*/
#pinit-point-from(1, offset-dx: 20pt, offset-dy: 20pt)[FROM]
