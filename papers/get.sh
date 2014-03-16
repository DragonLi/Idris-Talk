#!/bin/sh

function get {
    echo -n $1
    wget -q $2 && \
        echo " (Done)" || \
        echo " (Fail)"
    echo ""
}

get "IDRIS — Systems Programming Meets Full Dependent Types" \
    http://eb.host.cs.st-andrews.ac.uk/writings/plpv11.pdf

get "Programming in IDRIS: A Tutorial" \
    http://eb.host.cs.st-andrews.ac.uk/writings/idris-tutorial.pdf

get "Idris, a General Purpose Dependently Typed Programming Language: Design and Implementation" \
    http://eb.host.cs.st-andrews.ac.uk/drafts/impldtp.pdf
