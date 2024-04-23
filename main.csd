<CsoundSynthesizer>
<CsOptions>
; Select audio/midi flags here according to platform
-odac     ;;;realtime audio out
;-iadc    ;;;uncomment -iadc if real audio input is needed too
; For Non-realtime ouput leave only the line below:
; -o poscil3.wav -W ;;; for file output any platform
</CsOptions>
<CsInstruments>

sr = 48000
ksmps = 48000
nchnls = 1
0dbfs  = 1

giSine ftgen 0, 0, 2^10, 10, 1

instr 1

    ; Freq Random
    krnd    randomi 220, 440, 1	
    ; Sin Gen
    aSig    poscil3 .6, krnd, giSine
    
    out    aSig

endin

</CsInstruments>
<CsScore>
i1 0 40
e
</CsScore>
</CsoundSynthesizer>