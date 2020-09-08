# Take 5 perpetual generative drum solo
# Code by Steve Cvar / @vgan

use_bpm 85

live_loop :ride do
  sample :drum_cymbal_soft, amp:choose([0.8,0.9,1,])
  sleep 0.5
  sample :drum_cymbal_soft, amp:choose([0.8,0.9,1])
  sleep 0.375
  sample :drum_cymbal_soft, amp:choose([1,1.1,1.2])
  sleep 0.125
  sample :drum_cymbal_soft, amp:choose([1,1.1,1.2])
  sleep 0.5
  sample :drum_cymbal_soft, amp:choose([0.8,0.9,1])
  sleep 0.375
  sample :drum_cymbal_soft, amp:choose([1,1.1,1.2])
  sleep 0.125
  sample :drum_cymbal_soft, amp:choose([1,1.1,1.2])
  sleep 0.5
end

live_loop :bass_drum do
  sample :drum_bass_hard, amp: choose([0.8,0.9,1])
  sleep 2
  sample :drum_bass_hard, amp: choose([0.8,0.9,1])
  sleep 0.5
end

live_loop :hihat do
  sleep 0.5
  sample :drum_cymbal_pedal, amp: choose([0.7,0.8])
  sleep 1
  sample :drum_cymbal_pedal, amp: choose([0.7,0.8])
  sleep 1
end

use_synth :piano

live_loop :main_piano do
  play 41
  sleep 0.25
  play 56
  play 60
  play 65
  sleep 0.5
  play 41
  sleep 0.25
  play 56
  play 60
  play 65
  sleep 0.5
  play 48, sustain: 1, release: 2
  sleep 0.5
  play 55, sustain: 1, release: 2
  play 58, sustain: 1, release: 2
  play 63, sustain: 1, release: 2
  play 36, sustain: 1, release: 2
  sleep 0.5
  # repeat
  play 41
  sleep 0.25
  play 56
  play 60
  play 65
  sleep 0.5
  play 41
  sleep 0.25
  play 56
  play 60
  play 65
  sleep 0.5
  play 48, sustain: 1, release: 2
  sleep 0.5
  play 55, sustain: 1, release: 2
  play 58, sustain: 1, release: 2
  play 63, sustain: 1, release: 2
  play 36, sustain: 1, release: 2
  sleep 0.5
end

define :paradiddle_quarters do
  sample :drum_snare_soft,amp: choose([1,0.8,0.8,0.6,0.5]), decay: 3
  sleep 0.25
  sample :drum_snare_hard,amp: choose([0.8,0.8,0.6,0.5]), decay: 3
  sleep 0.25
  sample :drum_snare_soft,amp: choose([0.8,0.8,0.6,0.5]), decay: 3
  sleep 0.25
  sample :drum_snare_soft,amp: choose([0.8,0.8,0.6,0.5]), decay: 3
  sleep 0.25
  sample :drum_snare_hard,amp: choose([0.8,0.8,0.6,0.5]), decay: 3
  sleep 0.25
  sample :drum_snare_soft,amp: choose([0.8,0.8,0.6,0.5]), decay: 3
  sleep 0.25
  sample :drum_snare_hard,amp: choose([0.8,0.8,0.6,0.5]), decay: 3
  sleep 0.25
  sample :drum_snare_hard,amp: choose([0.6,0.5]), decay: 3
  sleep 0.25
  sample :drum_snare_soft,amp: choose([0.6,0.5]), decay: 3
  sleep 0.25
  sample :drum_snare_hard,amp: choose([0.6,0.5]), decay: 3
  sleep 0.25
  sample :drum_snare_soft,amp: choose([0.8,0.8,0.6,0.5]), decay: 3
  sleep 0.25
  sample :drum_snare_soft,amp: choose([0.8,0.8,0.6,0.5]), decay: 3
  sleep 0.25
  sample :drum_snare_hard,amp: choose([0.8,0.8,0.6,0.5]), decay: 3
  sleep 0.25
  sample :drum_snare_soft,amp: choose([1,0.8,0.8,0.6,0.5]), decay: 3
  sleep 0.25
  sample :drum_snare_hard,amp: choose([1,0.8,0.8,0.6,0.5]), decay: 3
  sleep 0.25
  sample :drum_snare_hard,amp: choose([1,0.8,0.8,0.6,0.5]), decay: 3
  sleep 0.25
end

define :paradiddle_8ths do # with bass drum
  sample :drum_snare_soft,amp: choose([1,0.8,0.8,0.6,0.5]), decay: 3
  sample :drum_bass_soft,amp: choose([1,0.8,0.8,0.6,0.5]), decay: 3
  sleep 0.125
  sample :drum_snare_hard,amp: choose([0.8,0.8,0.6,0.5]), decay: 3
  sleep 0.125
  sample :drum_snare_soft,amp: choose([0.8,0.8,0.6,0.5]), decay: 3
  sample :drum_bass_soft,amp: choose([1,0.8,0.8,0.6,0.5]), decay: 3
  sleep 0.125
  sample :drum_snare_soft,amp: choose([0.8,0.8,0.6,0.5]), decay: 3
  sleep 0.125
  sample :drum_snare_hard,amp: choose([0.8,0.8,0.6,0.5]), decay: 3
  sample :drum_bass_soft,amp: choose([1,0.8,0.8,0.6,0.5]), decay: 3
  sleep 0.125
  sample :drum_snare_soft,amp: choose([0.8,0.8,0.6,0.5]), decay: 3
  sleep 0.125
  sample :drum_snare_hard,amp: choose([0.8,0.8,0.6,0.5]), decay: 3
  sample :drum_bass_soft,amp: choose([1,0.8,0.8,0.6,0.5]), decay: 3
  sleep 0.125
  sample :drum_snare_hard,amp: choose([0.6,0.5]), decay: 3
  sleep 0.125
  sample :drum_snare_soft,amp: choose([0.6,0.5]), decay: 3
  sample :drum_bass_soft,amp: choose([1,0.8,0.8,0.6,0.5]), decay: 3
  sleep 0.125
  sample :drum_snare_hard,amp: choose([0.6,0.5]), decay: 3
  sleep 0.125
  sample :drum_snare_soft,amp: choose([0.8,0.8,0.6,0.5]), decay: 3
  sample :drum_bass_soft,amp: choose([1,0.8,0.8,0.6,0.5]), decay: 3
  sleep 0.125
  sample :drum_snare_soft,amp: choose([0.8,0.8,0.6,0.5]), decay: 3
  sleep 0.125
  sample :drum_snare_hard,amp: choose([0.8,0.8,0.6,0.5]), decay: 3
  sample :drum_bass_soft,amp: choose([1,0.8,0.8,0.6,0.5]), decay: 3
  sleep 0.125
  sample :drum_snare_soft,amp: choose([1,0.8,0.8,0.6,0.5]), decay: 3
  sleep 0.125
  sample :drum_snare_hard,amp: choose([1,0.8,0.8,0.6,0.5]), decay: 3
  sample :drum_bass_soft,amp: choose([1,0.8,0.8,0.6,0.5]), decay: 3
  sleep 0.125
  sample :drum_snare_hard,amp: choose([1,0.8,0.8,0.6,0.5]), decay: 3
  sleep 0.125
end

define :paradiddle_toms do
  sample :drum_tom_lo_soft,amp: choose([1,0.8,0.8,0.6,0.5]), decay: 3
  sleep 0.125
  sample :drum_tom_hi_soft,amp: choose([0.8,0.8,0.6,0.5]), decay: 3
  sleep 0.125
  sample :drum_tom_lo_soft,amp: choose([0.8,0.8,0.6,0.5]), decay: 3
  sleep 0.125
  sample :drum_tom_lo_soft,amp: choose([0.8,0.8,0.6,0.5]), decay: 3
  sleep 0.125
  sample :drum_tom_hi_soft,amp: choose([0.8,0.8,0.6,0.5]), decay: 3
  sleep 0.125
  sample :drum_tom_lo_soft,amp: choose([0.8,0.8,0.6,0.5]), decay: 3
  sleep 0.125
  sample :drum_tom_hi_soft,amp: choose([0.8,0.8,0.6,0.5]), decay: 3
  sleep 0.125
  sample :drum_tom_hi_soft,amp: choose([0.6,0.5]), decay: 3
  sleep 0.125
  sample :drum_tom_lo_soft,amp: choose([0.6,0.5]), decay: 3
  sleep 0.125
  sample :drum_tom_hi_soft,amp: choose([0.6,0.5]), decay: 3
  sleep 0.125
  sample :drum_tom_lo_soft,amp: choose([0.8,0.8,0.6,0.5]), decay: 3
  sleep 0.125
  sample :drum_tom_lo_soft,amp: choose([0.8,0.8,0.6,0.5]), decay: 3
  sleep 0.125
  sample :drum_tom_hi_soft,amp: choose([0.8,0.8,0.6,0.5]), decay: 3
  sleep 0.125
  sample :drum_tom_lo_soft,amp: choose([1,0.8,0.8,0.6,0.5]), decay: 3
  sleep 0.125
  sample :drum_tom_hi_soft,amp: choose([1,0.8,0.8,0.6,0.5]), decay: 3
  sleep 0.125
  sample :drum_tom_hi_soft,amp: choose([1,0.8,0.8,0.6,0.5]), decay: 3
  sleep 0.125
end

define :mission1 do
  sample :drum_tom_lo_hard,amp: choose([1,1.1,1.2,1.5,2])
  sample :drum_tom_hi_hard,amp: choose([1,1.1,1.2,1.5,2])
  sample choose([:drum_cymbal_open,:drum_cymbal_soft,:drum_cymbal_closed])
  sleep 1.25
  sample :drum_tom_lo_hard,amp: choose([1,1.1,1.2,1.5,2])
  sample :drum_tom_hi_hard,amp: choose([1,1.1,1.2,1.5,2])
  sleep 0.25
  sample :drum_tom_lo_hard,amp: choose([1,1.1,1.2,1.5,2])
  sample :drum_tom_hi_hard,amp: choose([1,1.1,1.2,1.5,2])
  sleep 0.5
  sample :drum_tom_lo_hard,amp: choose([1,1.1,1.2,1.5,2])
  sample :drum_tom_hi_hard,amp: choose([1,1.1,1.2,1.5,2])
  sleep 0.5
  
  # pt2
  sample :drum_tom_lo_hard,amp: choose([1,1.1,1.2,1.5,2])
  sample :drum_tom_hi_hard,amp: choose([1,1.1,1.2,1.5,2])
  sample choose([:drum_cymbal_open,:drum_cymbal_soft,:drum_cymbal_closed])
  sleep 1.25
  sample :drum_tom_lo_hard,amp: choose([1,1.1,1.2,1.5,2])
  sample :drum_tom_hi_hard,amp: choose([1,1.1,1.2,1.5,2])
  sleep 0.75
  sample :drum_tom_lo_hard,amp: choose([1,1.1,1.2,1.5,2])
  sample :drum_tom_hi_hard,amp: choose([1,1.1,1.2,1.5,2])
  sleep 0.25
  sample :drum_tom_lo_hard,amp: choose([1,1.1,1.2,1.5,2])
  sample :drum_tom_hi_hard,amp: choose([1,1.1,1.2,1.5,2])
  sleep 0.25
  sample :drum_tom_lo_hard,amp: choose([1,1.1,1.2,1.5,2])
  sample :drum_tom_hi_hard,amp: choose([1,1.1,1.2,1.5,2])
  sample choose([:drum_cymbal_open,:drum_cymbal_soft,:drum_cymbal_closed])
  
end

define :mission2 do
  # 1
  sample :drum_tom_lo_hard,amp: choose([1,1.1,1.2,1.5,2])
  sample :drum_tom_hi_hard,amp: choose([1,1.1,1.2,1.5,2])
  sample choose([:drum_cymbal_open,:drum_cymbal_soft,:drum_cymbal_closed])
  sleep 1.25
  sample :drum_tom_lo_hard,amp: choose([1,1.1,1.2,1.5,2])
  sample :drum_tom_hi_hard,amp: choose([1,1.1,1.2,1.5,2])
  sleep 0.125
  sample :drum_tom_lo_hard,amp: choose([1,1.1,1.2,1.5,2])
  sample :drum_tom_hi_hard,amp: choose([1,1.1,1.2,1.5,2])
  sleep 0.125
  sample :drum_tom_lo_hard,amp: choose([1,1.1,1.2,1.5,2])
  sample :drum_tom_hi_hard,amp: choose([1,1.1,1.2,1.5,2])
  sleep 0.25
  sample :drum_tom_lo_hard,amp: choose([1,1.1,1.2,1.5,2])
  sample :drum_tom_hi_hard,amp: choose([1,1.1,1.2,1.5,2])
  sleep 0.25
  sample :drum_tom_lo_hard,amp: choose([1,1.1,1.2,1.5,2])
  sample :drum_tom_hi_hard,amp: choose([1,1.1,1.2,1.5,2])
  sleep 0.25
  sample :drum_tom_lo_hard,amp: choose([1,1.1,1.2,1.5,2])
  sample :drum_tom_hi_hard,amp: choose([1,1.1,1.2,1.5,2])
  sleep 0.25
  sample :drum_tom_lo_hard,amp: choose([1,1.1,1.2,1.5,2])
  sample :drum_tom_hi_hard,amp: choose([1,1.1,1.2,1.5,2])
  sample choose([:drum_cymbal_open,:drum_cymbal_soft,:drum_cymbal_closed])
  # 2
  sleep 2.25
  sample :drum_tom_lo_hard,amp: choose([1,1.1,1.2,1.5,2])
  sample :drum_tom_hi_hard,amp: choose([1,1.1,1.2,1.5,2])
  sleep 0.125
  sample :drum_tom_lo_hard,amp: choose([1,1.1,1.2,1.5,2])
  sample :drum_tom_hi_hard,amp: choose([1,1.1,1.2,1.5,2])
  sleep 0.125
  sample :drum_tom_lo_hard,amp: choose([1,1.1,1.2,1.5,2])
  sample :drum_tom_hi_hard,amp: choose([1,1.1,1.2,1.5,2])
end

define :fill1 do
  # 1
  sample :drum_tom_hi_soft,amp: choose([1,0.8,0.8,0.6,0.5]), decay: 3
  sleep 0.125
  sample :drum_tom_hi_soft,amp: choose([1,0.8,0.8,0.6,0.5]), decay: 3
  sleep 0.125
  sample :drum_tom_hi_soft,amp: choose([1,0.8,0.8,0.6,0.5]), decay: 3
  sleep 0.125
  sample :drum_tom_hi_soft,amp: choose([1,0.8,0.8,0.6,0.5]), decay: 3
  sleep 0.25
  sample :drum_tom_lo_soft,amp: choose([1,0.8,0.8,0.6,0.5]), decay: 3
  sleep 0.125
  sample :drum_tom_lo_soft,amp: choose([1,0.8,0.8,0.6,0.5]), decay: 3
  sample choose([:drum_cymbal_open,:drum_cymbal_soft,:drum_cymbal_closed])
  sleep 0.25
  # 2
  sample :drum_tom_hi_soft,amp: choose([1,0.8,0.8,0.6,0.5]), decay: 3
  sleep 0.125
  sample :drum_tom_hi_soft,amp: choose([1,0.8,0.8,0.6,0.5]), decay: 3
  sleep 0.125
  sample :drum_tom_hi_soft,amp: choose([1,0.8,0.8,0.6,0.5]), decay: 3
  sleep 0.125
  sample :drum_tom_hi_soft,amp: choose([1,0.8,0.8,0.6,0.5]), decay: 3
  sleep 0.25
  sample :drum_tom_lo_soft,amp: choose([1,0.8,0.8,0.6,0.5]), decay: 3
  sleep 0.125
  sample :drum_tom_lo_soft,amp: choose([1,0.8,0.8,0.6,0.5]), decay: 3
  sample choose([:drum_cymbal_open,:drum_cymbal_soft,:drum_cymbal_closed])
  sleep 0.25
  # 3
  sample :drum_tom_hi_soft,amp: choose([1,0.8,0.8,0.6,0.5]), decay: 3
  sleep 0.125
  sample :drum_tom_hi_soft,amp: choose([1,0.8,0.8,0.6,0.5]), decay: 3
  sleep 0.125
  sample :drum_tom_hi_soft,amp: choose([1,0.8,0.8,0.6,0.5]), decay: 3
  sleep 0.125
  sample :drum_tom_hi_soft,amp: choose([1,0.8,0.8,0.6,0.5]), decay: 3
  sleep 0.25
  sample :drum_tom_lo_soft,amp: choose([1,0.8,0.8,0.6,0.5]), decay: 3
  sleep 0.125
  sample :drum_tom_lo_soft,amp: choose([1,0.8,0.8,0.6,0.5]), decay: 3
  sample choose([:drum_cymbal_open,:drum_cymbal_soft,:drum_cymbal_closed])
  sleep 0.25
  # 4
  sample :drum_tom_hi_soft,amp: choose([1,0.8,0.8,0.6,0.5]), decay: 3
  sleep 0.125
  sample :drum_tom_hi_soft,amp: choose([1,0.8,0.8,0.6,0.5]), decay: 3
  sleep 0.125
  sample :drum_tom_hi_soft,amp: choose([1,0.8,0.8,0.6,0.5]), decay: 3
  sleep 0.125
  sample :drum_tom_hi_soft,amp: choose([1,0.8,0.8,0.6,0.5]), decay: 3
  sleep 0.25
  sample :drum_tom_lo_soft,amp: choose([1,0.8,0.8,0.6,0.5]), decay: 3
  sleep 0.125
  sample :drum_tom_lo_soft,amp: choose([1,0.8,0.8,0.6,0.5]), decay: 3
  sample choose([:drum_cymbal_open,:drum_cymbal_soft,:drum_cymbal_closed])
  sleep 0.25
  # 5
  sample :drum_tom_hi_soft,amp: choose([1,0.8,0.8,0.6,0.5]), decay: 3
  sleep 0.125
  sample :drum_tom_hi_soft,amp: choose([1,0.8,0.8,0.6,0.5]), decay: 3
  sleep 0.125
  sample :drum_tom_hi_soft,amp: choose([1,0.8,0.8,0.6,0.5]), decay: 3
  sleep 0.125
  sample :drum_tom_hi_soft,amp: choose([1,0.8,0.8,0.6,0.5]), decay: 3
  sleep 0.25
  sample :drum_tom_lo_soft,amp: choose([1,0.8,0.8,0.6,0.5]), decay: 3
  sleep 0.125
  sample :drum_tom_lo_soft,amp: choose([1,0.8,0.8,0.6,0.5]), decay: 3
  sample choose([:drum_cymbal_open,:drum_cymbal_soft,:drum_cymbal_closed])
  sleep 0.25
  # 5
end

live_loop :drumsolomatic do
  sleep 5
  choose([mission1,mission2,paradiddle_quarters,paradiddle_8ths,paradiddle_toms,fill1])
end
