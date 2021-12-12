#!/bin/bash
# Each audio file will be a single-channel 16-bit PCM WAV with a sample rate of 22050 Hz.
for file in recordings/*.wav;
do
    sox $file -b16 -r 22050 wav/${file#recordings/};
done
