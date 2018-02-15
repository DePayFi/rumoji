require 'rumoji/emoji'
require 'set'

module Rumoji
  class Emoji
    NEWMOJI = SortedSet[
      self.new("\u{002A FE0F 20E3}", [:keycap_star]),
      self.new("\u{1F1FA 1F1F3}", [:"flag-un"]),
      self.new("\u{1F324 FE0F}", [:sun_small_cloud]),
      self.new("\u{1F325 FE0F}", [:sun_behind_cloud]),
      self.new("\u{1F326 FE0F}", [:sun_behind_rain_cloud]),
      self.new("\u{1F329 FE0F}", [:lightning_cloud]),
      self.new("\u{1F32A FE0F}", [:tornado_cloud]),
      self.new("\u{1F373}", [:cooking]),
      self.new("\u{1F373}", [:fried_egg]),
      self.new("\u{1F3C3 200D 2640 FE0F}", [:"woman-running"]),
      self.new("\u{1F3C3 200D 2642 FE0F}", [:"man-running"]),
      self.new("\u{1F3C4 200D 2640 FE0F}", [:"woman-surfing"]),
      self.new("\u{1F3C4 200D 2642 FE0F}", [:"man-surfing"]),
      self.new("\u{1F3CA 200D 2640 FE0F}", [:"woman-swimming"]),
      self.new("\u{1F3CA 200D 2642 FE0F}", [:"man-swimming"]),
      self.new("\u{1F3CB FE0F 200D 2640 FE0F}", [:"woman-lifting-weights"]),
      self.new("\u{1F3CB FE0F 200D 2642 FE0F}", [:"man-lifting-weights"]),
      self.new("\u{1F3CC FE0F 200D 2640 FE0F}", [:"woman-golfing"]),
      self.new("\u{1F3CC FE0F 200D 2642 FE0F}", [:"man-golfing"]),
      self.new("\u{1F3EE}", [:lantern]),
      self.new("\u{1F3F3 FE0F 200D 1F308}", [:"rainbow-flag"]),
      self.new("\u{1F3F4 E0067 E0062 E0065 E006E E0067 E007F}", [:"flag-england"]),
      self.new("\u{1F3F4 E0067 E0062 E0073 E0063 E0074 E007F}", [:"flag-scotland"]),
      self.new("\u{1F3F4 E0067 E0062 E0077 E006C E0073 E007F}", [:"flag-wales"]),
      self.new("\u{1F3FB}", [:"skin-tone-2"]),
      self.new("\u{1F3FC}", [:"skin-tone-3"]),
      self.new("\u{1F3FD}", [:"skin-tone-4"]),
      self.new("\u{1F3FE}", [:"skin-tone-5"]),
      self.new("\u{1F3FF}", [:"skin-tone-6"]),
      self.new("\u{1F401}", [:mouse2]),
      self.new("\u{1F404}", [:cow2]),
      self.new("\u{1F405}", [:tiger2]),
      self.new("\u{1F407}", [:rabbit2]),
      self.new("\u{1F408}", [:cat2]),
      self.new("\u{1F40B}", [:whale2]),
      self.new("\u{1F415}", [:dog2]),
      self.new("\u{1F416}", [:pig2]),
      self.new("\u{1F42C}", [:flipper]),
      self.new("\u{1F441 FE0F 200D 1F5E8 FE0F}", [:"eye-in-speech-bubble"]),
      self.new("\u{1F44D}", [:"+1"]),
      self.new("\u{1F468 200D 1F33E}", [:"male-farmer"]),
      self.new("\u{1F468 200D 1F373}", [:"male-cook"]),
      self.new("\u{1F468 200D 1F393}", [:"male-student"]),
      self.new("\u{1F468 200D 1F3A4}", [:"male-singer"]),
      self.new("\u{1F468 200D 1F3A8}", [:"male-artist"]),
      self.new("\u{1F468 200D 1F3EB}", [:"male-teacher"]),
      self.new("\u{1F468 200D 1F3ED}", [:"male-factory-worker"]),
      self.new("\u{1F468 200D 1F466 200D 1F466}", [:"man-boy-boy"]),
      self.new("\u{1F468 200D 1F466}", [:"man-boy"]),
      self.new("\u{1F468 200D 1F467 200D 1F466}", [:"man-girl-boy"]),
      self.new("\u{1F468 200D 1F467 200D 1F467}", [:"man-girl-girl"]),
      self.new("\u{1F468 200D 1F467}", [:"man-girl"]),
      self.new("\u{1F468 200D 1F469 200D 1F466}", [:family]),
      self.new("\u{1F468 200D 1F469 200D 1F466}", [:"man-woman-boy"]),
      self.new("\u{1F468 200D 1F4BB}", [:"male-technologist"]),
      self.new("\u{1F468 200D 1F4BC}", [:"male-office-worker"]),
      self.new("\u{1F468 200D 1F527}", [:"male-mechanic"]),
      self.new("\u{1F468 200D 1F52C}", [:"male-scientist"]),
      self.new("\u{1F468 200D 1F680}", [:"male-astronaut"]),
      self.new("\u{1F468 200D 1F692}", [:"male-firefighter"]),
      self.new("\u{1F468 200D 2695 FE0F}", [:"male-doctor"]),
      self.new("\u{1F468 200D 2696 FE0F}", [:"male-judge"]),
      self.new("\u{1F468 200D 2708 FE0F}", [:"male-pilot"]),
      self.new("\u{1F469 200D 1F33E}", [:"female-farmer"]),
      self.new("\u{1F469 200D 1F373}", [:"female-cook"]),
      self.new("\u{1F469 200D 1F393}", [:"female-student"]),
      self.new("\u{1F469 200D 1F3A4}", [:"female-singer"]),
      self.new("\u{1F469 200D 1F3A8}", [:"female-artist"]),
      self.new("\u{1F469 200D 1F3EB}", [:"female-teacher"]),
      self.new("\u{1F469 200D 1F3ED}", [:"female-factory-worker"]),
      self.new("\u{1F469 200D 1F466 200D 1F466}", [:"woman-boy-boy"]),
      self.new("\u{1F469 200D 1F466}", [:"woman-boy"]),
      self.new("\u{1F469 200D 1F467 200D 1F466}", [:"woman-girl-boy"]),
      self.new("\u{1F469 200D 1F467 200D 1F467}", [:"woman-girl-girl"]),
      self.new("\u{1F469 200D 1F467}", [:"woman-girl"]),
      self.new("\u{1F469 200D 1F4BB}", [:"female-technologist"]),
      self.new("\u{1F469 200D 1F4BC}", [:"female-office-worker"]),
      self.new("\u{1F469 200D 1F527}", [:"female-mechanic"]),
      self.new("\u{1F469 200D 1F52C}", [:"female-scientist"]),
      self.new("\u{1F469 200D 1F680}", [:"female-astronaut"]),
      self.new("\u{1F469 200D 1F692}", [:"female-firefighter"]),
      self.new("\u{1F469 200D 2695 FE0F}", [:"female-doctor"]),
      self.new("\u{1F469 200D 2696 FE0F}", [:"female-judge"]),
      self.new("\u{1F469 200D 2708 FE0F}", [:"female-pilot"]),
      self.new("\u{1F46A}", [:family]),
      self.new("\u{1F46A}", [:"man-woman-boy"]),
      self.new("\u{1F46B}", [:man_and_woman_holding_hands]),
      self.new("\u{1F46E 200D 2640 FE0F}", [:"female-police-officer"]),
      self.new("\u{1F46E 200D 2642 FE0F}", [:"male-police-officer"]),
      self.new("\u{1F46F 200D 2640 FE0F}", [:"woman-with-bunny-ears-partying"]),
      self.new("\u{1F46F 200D 2642 FE0F}", [:"man-with-bunny-ears-partying"]),
      self.new("\u{1F471 200D 2640 FE0F}", [:"blond-haired-woman"]),
      self.new("\u{1F471 200D 2642 FE0F}", [:"blond-haired-man"]),
      self.new("\u{1F473 200D 2640 FE0F}", [:"woman-wearing-turban"]),
      self.new("\u{1F473 200D 2642 FE0F}", [:"man-wearing-turban"]),
      self.new("\u{1F477 200D 2640 FE0F}", [:"female-construction-worker"]),
      self.new("\u{1F477 200D 2642 FE0F}", [:"male-construction-worker"]),
      self.new("\u{1F481 200D 2640 FE0F}", [:"woman-tipping-hand"]),
      self.new("\u{1F481 200D 2642 FE0F}", [:"man-tipping-hand"]),
      self.new("\u{1F482 200D 2640 FE0F}", [:"female-guard"]),
      self.new("\u{1F482 200D 2642 FE0F}", [:"male-guard"]),
      self.new("\u{1F486 200D 2640 FE0F}", [:"woman-getting-massage"]),
      self.new("\u{1F486 200D 2642 FE0F}", [:"man-getting-massage"]),
      self.new("\u{1F487 200D 2640 FE0F}", [:"woman-getting-haircut"]),
      self.new("\u{1F487 200D 2642 FE0F}", [:"man-getting-haircut"]),
      self.new("\u{1F4A4}", [:zzz]),
      self.new("\u{1F4D6}", [:open_book]),
      self.new("\u{1F4E1}", [:satellite_antenna]),
      self.new("\u{1F4E7}", [:"e-mail"]),
      self.new("\u{1F52A}", [:knife]),
      self.new("\u{1F575 FE0F 200D 2640 FE0F}", [:"female-detective"]),
      self.new("\u{1F575 FE0F 200D 2642 FE0F}", [:"male-detective"]),
      self.new("\u{1F57A}", [:man_dancing]),
      self.new("\u{1F595}", [:reversed_hand_with_middle_finger_extended]),
      self.new("\u{1F5A4}", [:black_heart]),
      self.new("\u{1F5E8 FE0F}", [:left_speech_bubble]),
      self.new("\u{1F645 200D 2640 FE0F}", [:"woman-gesturing-no"]),
      self.new("\u{1F645 200D 2642 FE0F}", [:"man-gesturing-no"]),
      self.new("\u{1F646 200D 2640 FE0F}", [:"woman-gesturing-ok"]),
      self.new("\u{1F646 200D 2642 FE0F}", [:"man-gesturing-ok"]),
      self.new("\u{1F647 200D 2640 FE0F}", [:"woman-bowing"]),
      self.new("\u{1F647 200D 2642 FE0F}", [:"man-bowing"]),
      self.new("\u{1F64B 200D 2640 FE0F}", [:"woman-raising-hand"]),
      self.new("\u{1F64B 200D 2642 FE0F}", [:"man-raising-hand"]),
      self.new("\u{1F64D 200D 2640 FE0F}", [:"woman-frowning"]),
      self.new("\u{1F64D 200D 2642 FE0F}", [:"man-frowning"]),
      self.new("\u{1F64E 200D 2640 FE0F}", [:"woman-pouting"]),
      self.new("\u{1F64E 200D 2642 FE0F}", [:"man-pouting"]),
      self.new("\u{1F6A3 200D 2640 FE0F}", [:"woman-rowing-boat"]),
      self.new("\u{1F6A3 200D 2642 FE0F}", [:"man-rowing-boat"]),
      self.new("\u{1F6B4 200D 2640 FE0F}", [:"woman-biking"]),
      self.new("\u{1F6B4 200D 2642 FE0F}", [:"man-biking"]),
      self.new("\u{1F6B5 200D 2640 FE0F}", [:"woman-mountain-biking"]),
      self.new("\u{1F6B5 200D 2642 FE0F}", [:"man-mountain-biking"]),
      self.new("\u{1F6B6 200D 2640 FE0F}", [:"woman-walking"]),
      self.new("\u{1F6B6 200D 2642 FE0F}", [:"man-walking"]),
      self.new("\u{1F6D1}", [:octagonal_sign]),
      self.new("\u{1F6D2}", [:shopping_trolley]),
      self.new("\u{1F6F4}", [:scooter]),
      self.new("\u{1F6F5}", [:motor_scooter]),
      self.new("\u{1F6F6}", [:canoe]),
      self.new("\u{1F6F7}", [:sled]),
      self.new("\u{1F6F8}", [:flying_saucer]),
      self.new("\u{1F918}", [:sign_of_the_horns]),
      self.new("\u{1F919}", [:call_me_hand]),
      self.new("\u{1F91A}", [:raised_back_of_hand]),
      self.new("\u{1F91B}", [:"left-facing_fist"]),
      self.new("\u{1F91C}", [:"right-facing_fist"]),
      self.new("\u{1F91E}", [:hand_with_index_and_middle_fingers_crossed]),
      self.new("\u{1F91F}", [:i_love_you_hand_sign]),
      self.new("\u{1F922}", [:nauseated_face]),
      self.new("\u{1F923}", [:rolling_on_the_floor_laughing]),
      self.new("\u{1F924}", [:drooling_face]),
      self.new("\u{1F925}", [:lying_face]),
      self.new("\u{1F926 200D 2640 FE0F}", [:"woman-facepalming"]),
      self.new("\u{1F926 200D 2642 FE0F}", [:"man-facepalming"]),
      self.new("\u{1F926}", [:face_palm]),
      self.new("\u{1F927}", [:sneezing_face]),
      self.new("\u{1F928}", [:face_with_one_eyebrow_raised]),
      self.new("\u{1F929}", [:grinning_face_with_star_eyes]),
      self.new("\u{1F92A}", [:grinning_face_with_one_large_and_one_small_eye]),
      self.new("\u{1F92B}", [:face_with_finger_covering_closed_lips]),
      self.new("\u{1F92C}", [:serious_face_with_symbols_covering_mouth]),
      self.new("\u{1F92D}", [:smiling_face_with_smiling_eyes_and_hand_covering_mouth]),
      self.new("\u{1F92E}", [:face_with_open_mouth_vomiting]),
      self.new("\u{1F92F}", [:shocked_face_with_exploding_head]),
      self.new("\u{1F930}", [:pregnant_woman]),
      self.new("\u{1F931}", [:"breast-feeding"]),
      self.new("\u{1F932}", [:palms_up_together]),
      self.new("\u{1F933}", [:selfie]),
      self.new("\u{1F934}", [:prince]),
      self.new("\u{1F935}", [:man_in_tuxedo]),
      self.new("\u{1F936}", [:mother_christmas]),
      self.new("\u{1F937 200D 2640 FE0F}", [:"woman-shrugging"]),
      self.new("\u{1F937 200D 2642 FE0F}", [:"man-shrugging"]),
      self.new("\u{1F937}", [:shrug]),
      self.new("\u{1F938 200D 2640 FE0F}", [:"woman-cartwheeling"]),
      self.new("\u{1F938 200D 2642 FE0F}", [:"man-cartwheeling"]),
      self.new("\u{1F938}", [:person_doing_cartwheel]),
      self.new("\u{1F939 200D 2640 FE0F}", [:"woman-juggling"]),
      self.new("\u{1F939 200D 2642 FE0F}", [:"man-juggling"]),
      self.new("\u{1F939}", [:juggling]),
      self.new("\u{1F93A}", [:fencer]),
      self.new("\u{1F93C 200D 2640 FE0F}", [:"woman-wrestling"]),
      self.new("\u{1F93C 200D 2642 FE0F}", [:"man-wrestling"]),
      self.new("\u{1F93C}", [:wrestlers]),
      self.new("\u{1F93D 200D 2640 FE0F}", [:"woman-playing-water-polo"]),
      self.new("\u{1F93D 200D 2642 FE0F}", [:"man-playing-water-polo"]),
      self.new("\u{1F93D}", [:water_polo]),
      self.new("\u{1F93E 200D 2640 FE0F}", [:"woman-playing-handball"]),
      self.new("\u{1F93E 200D 2642 FE0F}", [:"man-playing-handball"]),
      self.new("\u{1F93E}", [:handball]),
      self.new("\u{1F940}", [:wilted_flower]),
      self.new("\u{1F941}", [:drum_with_drumsticks]),
      self.new("\u{1F944}", [:spoon]),
      self.new("\u{1F945}", [:goal_net]),
      self.new("\u{1F947}", [:first_place_medal]),
      self.new("\u{1F948}", [:second_place_medal]),
      self.new("\u{1F949}", [:third_place_medal]),
      self.new("\u{1F94A}", [:boxing_glove]),
      self.new("\u{1F94B}", [:martial_arts_uniform]),
      self.new("\u{1F94C}", [:curling_stone]),
      self.new("\u{1F958}", [:shallow_pan_of_food]),
      self.new("\u{1F95F}", [:dumpling]),
      self.new("\u{1F960}", [:fortune_cookie]),
      self.new("\u{1F961}", [:takeout_box]),
      self.new("\u{1F962}", [:chopsticks]),
      self.new("\u{1F963}", [:bowl_with_spoon]),
      self.new("\u{1F964}", [:cup_with_straw]),
      self.new("\u{1F965}", [:coconut]),
      self.new("\u{1F966}", [:broccoli]),
      self.new("\u{1F967}", [:pie]),
      self.new("\u{1F968}", [:pretzel]),
      self.new("\u{1F969}", [:cut_of_meat]),
      self.new("\u{1F96A}", [:sandwich]),
      self.new("\u{1F96B}", [:canned_food]),
      self.new("\u{1F985}", [:eagle]),
      self.new("\u{1F986}", [:duck]),
      self.new("\u{1F987}", [:bat]),
      self.new("\u{1F988}", [:shark]),
      self.new("\u{1F989}", [:owl]),
      self.new("\u{1F98A}", [:fox_face]),
      self.new("\u{1F98B}", [:butterfly]),
      self.new("\u{1F98C}", [:deer]),
      self.new("\u{1F98D}", [:gorilla]),
      self.new("\u{1F98E}", [:lizard]),
      self.new("\u{1F98F}", [:rhinoceros]),
      self.new("\u{1F990}", [:shrimp]),
      self.new("\u{1F991}", [:squid]),
      self.new("\u{1F992}", [:giraffe_face]),
      self.new("\u{1F993}", [:zebra_face]),
      self.new("\u{1F994}", [:hedgehog]),
      self.new("\u{1F995}", [:sauropod]),
      self.new("\u{1F996}", [:"t-rex"]),
      self.new("\u{1F997}", [:cricket]),
      self.new("\u{1F9D0}", [:face_with_monocle]),
      self.new("\u{1F9D1}", [:adult]),
      self.new("\u{1F9D2}", [:child]),
      self.new("\u{1F9D3}", [:older_adult]),
      self.new("\u{1F9D4}", [:bearded_person]),
      self.new("\u{1F9D5}", [:person_with_headscarf]),
      self.new("\u{1F9D6 200D 2640 FE0F}", [:woman_in_steamy_room]),
      self.new("\u{1F9D6 200D 2642 FE0F}", [:man_in_steamy_room]),
      self.new("\u{1F9D6}", [:person_in_steamy_room]),
      self.new("\u{1F9D7 200D 2640 FE0F}", [:woman_climbing]),
      self.new("\u{1F9D7 200D 2642 FE0F}", [:man_climbing]),
      self.new("\u{1F9D7}", [:person_climbing]),
      self.new("\u{1F9D8 200D 2640 FE0F}", [:woman_in_lotus_position]),
      self.new("\u{1F9D8 200D 2642 FE0F}", [:man_in_lotus_position]),
      self.new("\u{1F9D8}", [:person_in_lotus_position]),
      self.new("\u{1F9D9 200D 2640 FE0F}", [:female_mage]),
      self.new("\u{1F9D9 200D 2642 FE0F}", [:male_mage]),
      self.new("\u{1F9D9}", [:mage]),
      self.new("\u{1F9DA 200D 2640 FE0F}", [:female_fairy]),
      self.new("\u{1F9DA 200D 2642 FE0F}", [:male_fairy]),
      self.new("\u{1F9DA}", [:fairy]),
      self.new("\u{1F9DB 200D 2640 FE0F}", [:female_vampire]),
      self.new("\u{1F9DB 200D 2642 FE0F}", [:male_vampire]),
      self.new("\u{1F9DB}", [:vampire]),
      self.new("\u{1F9DC 200D 2640 FE0F}", [:mermaid]),
      self.new("\u{1F9DC 200D 2642 FE0F}", [:merman]),
      self.new("\u{1F9DC}", [:merperson]),
      self.new("\u{1F9DD 200D 2640 FE0F}", [:female_elf]),
      self.new("\u{1F9DD 200D 2642 FE0F}", [:male_elf]),
      self.new("\u{1F9DD}", [:elf]),
      self.new("\u{1F9DE 200D 2640 FE0F}", [:female_genie]),
      self.new("\u{1F9DE 200D 2642 FE0F}", [:male_genie]),
      self.new("\u{1F9DE}", [:genie]),
      self.new("\u{1F9DF 200D 2640 FE0F}", [:female_zombie]),
      self.new("\u{1F9DF 200D 2642 FE0F}", [:male_zombie]),
      self.new("\u{1F9DF}", [:zombie]),
      self.new("\u{1F9E0}", [:brain]),
      self.new("\u{1F9E1}", [:orange_heart]),
      self.new("\u{1F9E2}", [:billed_cap]),
      self.new("\u{1F9E3}", [:scarf]),
      self.new("\u{1F9E4}", [:gloves]),
      self.new("\u{1F9E5}", [:coat]),
      self.new("\u{1F9E6}", [:socks]),
      self.new("\u{23CF FE0F}", [:eject]),
      self.new("\u{2614}", [:umbrella_with_rain_drops]),
      self.new("\u{2640 FE0F}", [:female_sign]),
      self.new("\u{2642 FE0F}", [:male_sign]),
      self.new("\u{2695 FE0F}", [:staff_of_aesculapius]),
      self.new("\u{26F9 FE0F 200D 2640 FE0F}", [:"woman-bouncing-ball"]),
      self.new("\u{26F9 FE0F 200D 2642 FE0F}", [:"man-bouncing-ball"]),
      self.new("\u{270F FE0F}", [:pencil2]),
      self.new("\u{2757}", [:heavy_exclamation_mark])
    ]
  end
end