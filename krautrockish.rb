# Krautrockish
# Steve Cvar / @vgan

in_thread do
  70.times do
    sample :drum_bass_soft, amp: [1,1.2,1.3,1.5,1.6].choose
    sleep 0.25
    sample :drum_bass_soft, amp: [0.8,0.9,1].choose
    sleep 0.25
    sample :drum_bass_soft, amp: [0.8,0.9,1].choose
    sleep 0.25
    sample :drum_bass_soft, amp: [0.8,0.9,1].choose
    sleep 0.25
    # 1
    sample :drum_bass_soft, amp: [1,1.2,1.3].choose
    sleep 0.25
    sample :drum_bass_soft, amp: [0.8,0.9,1].choose
    sleep 0.25
    sample :drum_bass_soft, amp: [0.8,0.9,1].choose
    sleep 0.25
    sample :drum_bass_soft, amp: [0.8,0.9,1].choose
    sleep 0.25
    #2
  end
end


define :snare_upbeat1 do
  sleep 1.25
  sample :drum_snare_soft
  sleep 0.5
  sample :drum_snare_soft
  sleep 0.25
end

define :snare_upbeat_splash do
  sleep 1.25
  sample :drum_snare_soft
  sample :drum_splash_soft
  sleep 0.5
  sample :drum_snare_soft
  sample :drum_splash_soft
  sleep 0.25
end

define :normal do
  sleep 0.5
  sample :drum_snare_soft
  sleep 0.5
  sleep 0.5
  sample :drum_snare_soft
  sleep 0.5
end

define :snare_roll1 do
  sleep 1.25
  sample :drum_snare_soft
  sleep 0.25
  sample :drum_snare_soft
  sleep 0.125
  sample :drum_snare_soft
  sleep 0.125
  sample :drum_snare_soft
  sleep 0.125
  sample :drum_snare_soft
  sleep 0.125
end

define :snare_roll2 do
  sleep 1.25
  sample :drum_snare_soft
  sleep 0.125
  sample :drum_snare_soft
  sleep 0.125
  sample :drum_snare_soft
  sleep 0.25
  sample :drum_snare_soft
  sleep 0.25
end

define :snare_roll3 do
  sleep 0.5
  sample :drum_snare_soft
  sleep 0.125
  sample :drum_snare_soft
  sleep 0.25
  sample :drum_snare_soft
  sleep 0.125
  sample :drum_snare_soft
  sleep 1
end

define :snare_roll4 do
  sample :drum_snare_soft
  sleep 0.125
  sample :drum_snare_soft
  sleep 0.125
  sample :drum_snare_soft
  sleep 0.125
  sample :drum_snare_soft
  sleep 0.125
  sample :drum_snare_soft
  sleep 0.125
  sample :drum_snare_soft
  sleep 0.125
  sample :drum_snare_soft
  sleep 0.125
  sample :drum_snare_soft
  sleep 1.125
end

define :snare_roll5 do
  sample :drum_snare_soft, amp: [1.2,1.3,1.5,1.6].choose
  sleep 0.25
  sample :drum_snare_soft
  sleep 0.25
  sample :drum_snare_soft
  sleep 0.25
  sample :drum_snare_soft
  sleep 0.25
  sample :drum_snare_soft, amp: [1.2,1.3,1.5,1.6].choose
  sleep 0.25
  sample :drum_snare_soft
  sleep 0.25
  sample :drum_snare_soft
  sleep 0.25
  sample :drum_snare_soft
  sleep 0.25
end

# 4
define :snare_roll6 do
  sample :drum_snare_soft, amp: [1.2,1.3,1.5,1.6].choose
  sleep 0.25
  sample :drum_snare_soft
  sleep 0.25
  sample :drum_snare_soft
  sleep 0.25
  sample :drum_snare_soft
  sleep 0.25
  sample :drum_snare_soft, amp: [1.2,1.3,1.5,1.6].choose
  sleep 0.25
  sample :drum_snare_soft
  sleep 0.25
  sample :drum_snare_soft
  sleep 0.25
  sample :drum_snare_soft
  sleep 0.25
  sample :drum_snare_soft, amp: [1.2,1.3,1.5,1.6].choose
  sleep 0.25
  sample :drum_snare_soft
  sleep 0.25
  sample :drum_snare_soft
  sleep 0.25
  sample :drum_snare_soft
  sleep 0.25
  sample :drum_snare_soft, amp: [1.2,1.3,1.5,1.6].choose
  sleep 0.25
  sample :drum_snare_soft
  sleep 0.25
  sample :drum_snare_soft
  sleep 0.25
  sample :drum_snare_soft
  sleep 0.25
end

in_thread do
  4.times do
    normal
    snare_upbeat1
    normal
    snare_upbeat_splash
    normal
    snare_roll1
    normal
    snare_roll2
    normal
    snare_roll3
    normal
    snare_roll4
    normal
    snare_roll5
    normal
    snare_roll6
    sample :drum_splash_soft
  end
end

live_loop :bass2 do
  with_fx :level, amp: 0.3 do
    sample :bass_thick_c, rate: [0.5,1,2].choose
    sleep [0.25,0.5].choose
  end
end

in_thread do
  4.times do
    use_synth :square
    with_fx :reverb, mix: 0.3, room: 1 do
      notes = (scale :g2+[24,12].choose, :minor_pentatonic).take(8)
      [1,1,1,1,4,4,4,4,4,4,4,4,1,1,1,1].each do |r|
        (2*r).times do
          play notes.choose, amp: 0.15, sustain: 0.25
          sleep (1.0/r)
        end
      end
    end
  end
end
