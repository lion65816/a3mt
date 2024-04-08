; AAT edits: Added tables for Iris.

; 4 bytes of freeram, which should never be reset elsewhere
!freeram = $7FA000

; ExGFX numbers for the copies of GFX32 and GFX33
!default_demo_player_gfx = $932
!default_iris_player_gfx = $931
!default_animation_gfx   = $933

; ExGFX to use for the player in each overworld submap (for the border)
; In order: main, YI, Dome, FoI, VoB, Special, Star
overworld_demo_player_gfx:
    dw $932,$932,$932,$932,$932,$932,$932

overworld_iris_player_gfx:
    dw $931,$931,$931,$931,$931,$931,$931

; ExGFX to use for the player in each boss cutscene
; In order: Iggy, Morton, Lemmy, Ludwig, Roy, Wendy, Larry, Credits
cutscene_demo_player_gfx:
    dw $932,$932,$932,$932,$932,$932,$932,$932

cutscene_iris_player_gfx:
    dw $931,$931,$931,$931,$931,$931,$931,$931

; ExGFX to use for the player in each sublevel
level_demo_player_gfx:
    dw $932,$932,$932,$932,$932,$932,$932,$932 ; 000-007
    dw $932,$932,$932,$932,$932,$932,$932,$932 ; 008-00F
    dw $932,$932,$932,$932,$932,$932,$932,$932 ; 010-017
    dw $932,$932,$932,$932,$932,$932,$932,$932 ; 018-01F
    dw $932,$932,$932,$932,$932,$932,$932,$932 ; 020-027
    dw $932,$932,$932,$932,$932,$932,$932,$932 ; 028-02F
    dw $932,$932,$932,$932,$932,$932,$932,$932 ; 030-037
    dw $932,$932,$932,$932,$932,$932,$932,$932 ; 038-03F
    dw $932,$932,$932,$932,$932,$932,$932,$932 ; 040-047
    dw $932,$932,$932,$932,$932,$932,$932,$932 ; 048-04F
    dw $932,$932,$932,$932,$932,$932,$932,$932 ; 050-057
    dw $932,$932,$932,$932,$932,$932,$932,$932 ; 058-05F
    dw $932,$932,$932,$932,$932,$932,$932,$932 ; 060-067
    dw $932,$932,$932,$932,$932,$932,$932,$932 ; 068-06F
    dw $932,$932,$932,$932,$932,$932,$932,$932 ; 070-077
    dw $932,$932,$932,$932,$932,$932,$932,$932 ; 078-07F
    dw $932,$932,$932,$932,$932,$932,$932,$932 ; 080-087
    dw $932,$932,$932,$932,$932,$932,$932,$932 ; 088-08F
    dw $932,$932,$932,$932,$932,$932,$932,$932 ; 090-097
    dw $932,$932,$932,$932,$932,$932,$932,$932 ; 098-09F
    dw $932,$932,$932,$932,$932,$932,$932,$932 ; 0A0-0A7
    dw $932,$932,$932,$932,$932,$932,$932,$932 ; 0A8-0AF
    dw $932,$932,$932,$932,$932,$932,$932,$932 ; 0B0-0B7
    dw $932,$932,$932,$932,$932,$932,$932,$932 ; 0B8-0BF
    dw $932,$932,$932,$932,$932,$932,$932,$932 ; 0C0-0C7
    dw $932,$932,$932,$932,$932,$932,$932,$932 ; 0C8-0CF
    dw $932,$932,$932,$932,$932,$932,$932,$932 ; 0D0-0D7
    dw $932,$932,$932,$932,$932,$932,$934,$934 ; 0D8-0DF
    dw $932,$932,$932,$932,$932,$932,$932,$932 ; 0E0-0E7
    dw $932,$932,$932,$932,$932,$932,$932,$932 ; 0E8-0EF
    dw $932,$932,$932,$932,$932,$932,$932,$932 ; 0F0-0F7
    dw $932,$932,$932,$932,$932,$932,$932,$932 ; 0F8-0FF
    dw $932,$932,$932,$932,$932,$932,$932,$932 ; 100-107
    dw $932,$932,$932,$932,$932,$932,$932,$932 ; 108-10F
    dw $932,$932,$932,$932,$932,$932,$932,$932 ; 110-117
    dw $932,$932,$935,$932,$932,$932,$932,$932 ; 118-11F
    dw $932,$932,$932,$932,$932,$932,$932,$932 ; 120-127
    dw $932,$932,$932,$932,$932,$932,$932,$932 ; 128-12F
    dw $932,$932,$932,$932,$932,$932,$932,$932 ; 130-137
    dw $932,$932,$932,$932,$932,$932,$932,$932 ; 138-13F
    dw $932,$932,$932,$932,$932,$932,$932,$932 ; 140-147
    dw $932,$932,$932,$932,$932,$932,$932,$932 ; 148-14F
    dw $932,$932,$932,$932,$932,$932,$932,$932 ; 150-157
    dw $932,$932,$932,$932,$932,$932,$932,$932 ; 158-15F
    dw $932,$932,$932,$932,$932,$932,$932,$932 ; 160-167
    dw $932,$932,$932,$932,$932,$932,$932,$932 ; 168-16F
    dw $932,$932,$935,$932,$932,$932,$932,$932 ; 170-177
    dw $932,$932,$932,$932,$932,$932,$932,$932 ; 178-17F
    dw $932,$932,$932,$932,$932,$932,$932,$932 ; 180-187
    dw $932,$932,$932,$932,$932,$932,$932,$932 ; 188-18F
    dw $932,$932,$932,$932,$932,$932,$932,$932 ; 190-197
    dw $932,$932,$932,$932,$932,$932,$932,$932 ; 198-19F
    dw $932,$932,$932,$932,$932,$932,$932,$932 ; 1A0-1A7
    dw $932,$932,$932,$932,$932,$932,$932,$932 ; 1A8-1AF
    dw $932,$932,$932,$932,$932,$932,$932,$932 ; 1B0-1B7
    dw $932,$932,$932,$932,$932,$932,$932,$932 ; 1B8-1BF
    dw $932,$932,$932,$932,$932,$932,$932,$932 ; 1C0-1C7
    dw $932,$932,$932,$932,$934,$932,$932,$932 ; 1C8-1CF
    dw $932,$932,$932,$932,$932,$932,$932,$932 ; 1D0-1D7
    dw $932,$932,$932,$932,$932,$932,$932,$932 ; 1D8-1DF
    dw $932,$932,$932,$932,$932,$932,$932,$932 ; 1E0-1E7
    dw $932,$932,$932,$932,$932,$932,$932,$932 ; 1E8-1EF
    dw $932,$932,$932,$932,$932,$932,$932,$932 ; 1F0-1F7
    dw $932,$932,$932,$932,$932,$932,$932,$932 ; 1F8-1FF

level_iris_player_gfx:
    dw $931,$931,$931,$931,$931,$931,$931,$931 ; 000-007
    dw $931,$931,$931,$931,$931,$931,$931,$931 ; 008-00F
    dw $931,$931,$931,$931,$931,$931,$931,$931 ; 010-017
    dw $931,$931,$931,$931,$931,$931,$931,$931 ; 018-01F
    dw $931,$931,$931,$931,$931,$931,$931,$931 ; 020-027
    dw $931,$931,$931,$931,$931,$931,$931,$931 ; 028-02F
    dw $931,$931,$931,$931,$931,$931,$931,$931 ; 030-037
    dw $931,$931,$931,$931,$931,$931,$931,$931 ; 038-03F
    dw $931,$931,$931,$931,$931,$931,$931,$931 ; 040-047
    dw $931,$931,$931,$931,$931,$931,$931,$931 ; 048-04F
    dw $931,$931,$931,$931,$931,$931,$931,$931 ; 050-057
    dw $931,$931,$931,$931,$931,$931,$931,$931 ; 058-05F
    dw $931,$931,$931,$931,$931,$931,$931,$931 ; 060-067
    dw $931,$931,$931,$931,$931,$931,$931,$931 ; 068-06F
    dw $931,$931,$931,$931,$931,$931,$931,$931 ; 070-077
    dw $931,$931,$931,$931,$931,$931,$931,$931 ; 078-07F
    dw $931,$931,$931,$931,$931,$931,$931,$931 ; 080-087
    dw $931,$931,$931,$931,$931,$931,$931,$931 ; 088-08F
    dw $931,$931,$931,$931,$931,$931,$931,$931 ; 090-097
    dw $931,$931,$931,$931,$931,$931,$931,$931 ; 098-09F
    dw $931,$931,$931,$931,$931,$931,$931,$931 ; 0A0-0A7
    dw $931,$931,$931,$931,$931,$931,$931,$931 ; 0A8-0AF
    dw $931,$931,$931,$931,$931,$931,$931,$931 ; 0B0-0B7
    dw $931,$931,$931,$931,$931,$931,$931,$931 ; 0B8-0BF
    dw $931,$931,$931,$931,$931,$931,$931,$931 ; 0C0-0C7
    dw $931,$931,$931,$931,$931,$931,$931,$931 ; 0C8-0CF
    dw $931,$931,$931,$931,$931,$931,$931,$931 ; 0D0-0D7
    dw $931,$931,$931,$931,$931,$931,$938,$938 ; 0D8-0DF
    dw $931,$931,$931,$931,$931,$931,$931,$931 ; 0E0-0E7
    dw $931,$931,$931,$931,$931,$931,$931,$931 ; 0E8-0EF
    dw $931,$931,$931,$931,$931,$931,$931,$931 ; 0F0-0F7
    dw $931,$931,$931,$931,$931,$931,$931,$931 ; 0F8-0FF
    dw $931,$931,$931,$931,$931,$931,$931,$931 ; 100-107
    dw $931,$931,$931,$931,$931,$931,$931,$931 ; 108-10F
    dw $931,$931,$931,$931,$931,$931,$931,$931 ; 110-117
    dw $931,$931,$939,$931,$931,$931,$931,$931 ; 118-11F
    dw $931,$931,$931,$931,$931,$931,$931,$931 ; 120-127
    dw $931,$931,$931,$931,$931,$931,$931,$931 ; 128-12F
    dw $931,$931,$931,$931,$931,$931,$931,$931 ; 130-137
    dw $931,$931,$931,$931,$931,$931,$931,$931 ; 138-13F
    dw $931,$931,$931,$931,$931,$931,$931,$931 ; 140-147
    dw $931,$931,$931,$931,$931,$931,$931,$931 ; 148-14F
    dw $931,$931,$931,$931,$931,$931,$931,$931 ; 150-157
    dw $931,$931,$931,$931,$931,$931,$931,$931 ; 158-15F
    dw $931,$931,$931,$931,$931,$931,$931,$931 ; 160-167
    dw $931,$931,$931,$931,$931,$931,$931,$931 ; 168-16F
    dw $931,$931,$939,$931,$931,$931,$931,$931 ; 170-177
    dw $931,$931,$931,$931,$931,$931,$931,$931 ; 178-17F
    dw $931,$931,$931,$931,$931,$931,$931,$931 ; 180-187
    dw $931,$931,$931,$931,$931,$931,$931,$931 ; 188-18F
    dw $931,$931,$931,$931,$931,$931,$931,$931 ; 190-197
    dw $931,$931,$931,$931,$931,$931,$931,$931 ; 198-19F
    dw $931,$931,$931,$931,$931,$931,$931,$931 ; 1A0-1A7
    dw $931,$931,$931,$931,$931,$931,$931,$931 ; 1A8-1AF
    dw $931,$931,$931,$931,$931,$931,$931,$931 ; 1B0-1B7
    dw $931,$931,$931,$931,$931,$931,$931,$931 ; 1B8-1BF
    dw $931,$931,$931,$931,$931,$931,$931,$931 ; 1C0-1C7
    dw $931,$931,$931,$931,$938,$931,$931,$931 ; 1C8-1CF
    dw $931,$931,$931,$931,$931,$931,$931,$931 ; 1D0-1D7
    dw $931,$931,$931,$931,$931,$931,$931,$931 ; 1D8-1DF
    dw $931,$931,$931,$931,$931,$931,$931,$931 ; 1E0-1E7
    dw $931,$931,$931,$931,$931,$931,$931,$931 ; 1E8-1EF
    dw $931,$931,$931,$931,$931,$931,$931,$931 ; 1F0-1F7
    dw $931,$931,$931,$931,$931,$931,$931,$931 ; 1F8-1FF

; ExGFX to use for animated tiles in each sublevel
level_animations_gfx:
    dw $933,$933,$933,$933,$933,$933,$933,$933 ; 000-007
    dw $933,$933,$933,$933,$933,$933,$933,$933 ; 008-00F
    dw $933,$933,$933,$933,$933,$933,$933,$933 ; 010-017
    dw $933,$933,$933,$933,$933,$933,$933,$933 ; 018-01F
    dw $933,$933,$933,$933,$933,$933,$933,$933 ; 020-027
    dw $933,$933,$933,$933,$933,$933,$933,$933 ; 028-02F
    dw $933,$933,$937,$937,$933,$933,$933,$933 ; 030-037
    dw $933,$933,$937,$937,$933,$933,$933,$933 ; 038-03F
    dw $933,$933,$933,$933,$933,$933,$933,$933 ; 040-047
    dw $933,$933,$933,$933,$933,$933,$933,$933 ; 048-04F
    dw $933,$933,$933,$933,$933,$933,$933,$933 ; 050-057
    dw $933,$933,$933,$933,$933,$933,$933,$933 ; 058-05F
    dw $933,$933,$933,$933,$933,$933,$933,$933 ; 060-067
    dw $933,$933,$933,$933,$933,$933,$933,$933 ; 068-06F
    dw $933,$933,$933,$933,$933,$933,$933,$933 ; 070-077
    dw $933,$933,$933,$933,$933,$933,$933,$933 ; 078-07F
    dw $933,$933,$933,$933,$933,$933,$933,$933 ; 080-087
    dw $933,$933,$933,$933,$933,$933,$933,$933 ; 088-08F
    dw $933,$933,$933,$933,$933,$933,$933,$933 ; 090-097
    dw $933,$93A,$933,$933,$933,$933,$933,$933 ; 098-09F
    dw $933,$933,$933,$933,$933,$933,$93F,$933 ; 0A0-0A7
    dw $933,$937,$933,$933,$933,$933,$937,$933 ; 0A8-0AF
    dw $933,$933,$933,$933,$933,$933,$933,$933 ; 0B0-0B7
    dw $933,$933,$933,$933,$933,$933,$933,$933 ; 0B8-0BF
    dw $933,$933,$933,$933,$933,$933,$933,$933 ; 0C0-0C7
    dw $933,$93D,$93D,$933,$933,$933,$936,$933 ; 0C8-0CF
    dw $933,$933,$933,$937,$933,$933,$937,$937 ; 0D0-0D7
    dw $933,$933,$933,$933,$933,$933,$933,$933 ; 0D8-0DF
    dw $933,$933,$933,$933,$933,$933,$933,$933 ; 0E0-0E7
    dw $933,$933,$933,$933,$937,$933,$933,$933 ; 0E8-0EF
    dw $933,$933,$933,$933,$93B,$937,$937,$933 ; 0F0-0F7
    dw $933,$933,$933,$933,$933,$933,$933,$933 ; 0F8-0FF
    dw $933,$933,$933,$933,$933,$933,$933,$933 ; 100-107
    dw $933,$933,$933,$933,$933,$933,$933,$933 ; 108-10F
    dw $933,$933,$933,$933,$933,$933,$933,$933 ; 110-117
    dw $933,$933,$933,$933,$933,$933,$933,$933 ; 118-11F
    dw $933,$933,$933,$933,$933,$933,$933,$933 ; 120-127
    dw $933,$933,$933,$933,$933,$933,$933,$933 ; 128-12F
    dw $933,$933,$933,$933,$933,$933,$933,$933 ; 130-137
    dw $933,$933,$933,$933,$933,$933,$933,$933 ; 138-13F
    dw $933,$933,$933,$933,$933,$933,$933,$933 ; 140-147
    dw $933,$933,$933,$933,$933,$933,$933,$933 ; 148-14F
    dw $933,$933,$933,$933,$933,$933,$933,$933 ; 150-157
    dw $933,$933,$933,$933,$933,$933,$933,$933 ; 158-15F
    dw $933,$933,$933,$933,$933,$933,$933,$933 ; 160-167
    dw $933,$933,$933,$933,$933,$933,$933,$933 ; 168-16F
    dw $933,$933,$933,$933,$933,$933,$933,$933 ; 170-177
    dw $933,$933,$933,$933,$933,$933,$933,$933 ; 178-17F
    dw $933,$933,$933,$937,$933,$933,$933,$933 ; 180-187
    dw $933,$933,$933,$933,$933,$933,$933,$933 ; 188-18F
    dw $933,$933,$933,$937,$933,$933,$937,$933 ; 190-197
    dw $933,$940,$937,$933,$933,$933,$933,$933 ; 198-19F
    dw $933,$933,$93E,$933,$933,$933,$933,$937 ; 1A0-1A7
    dw $937,$937,$933,$933,$933,$933,$933,$933 ; 1A8-1AF
    dw $933,$933,$933,$933,$933,$933,$933,$933 ; 1B0-1B7
    dw $933,$933,$933,$933,$933,$933,$933,$933 ; 1B8-1BF
    dw $933,$933,$933,$933,$933,$933,$933,$933 ; 1C0-1C7
    dw $933,$933,$933,$933,$933,$933,$933,$933 ; 1C8-1CF
    dw $933,$933,$933,$933,$933,$933,$933,$933 ; 1D0-1D7
    dw $933,$933,$933,$933,$933,$933,$933,$933 ; 1D8-1DF
    dw $937,$933,$933,$933,$933,$933,$933,$933 ; 1E0-1E7
    dw $933,$933,$933,$933,$933,$933,$933,$933 ; 1E8-1EF
    dw $933,$933,$933,$933,$933,$933,$933,$933 ; 1F0-1F7
    dw $933,$933,$933,$933,$933,$933,$933,$933 ; 1F8-1FF
