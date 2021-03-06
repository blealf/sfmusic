PianoChord.create!([
  {name: "Major", interval: "4,3", number: 1},
  {name: "Minor", interval: "3,4", number: 2},
  {name: "Augumented", interval: "4,4", number: 3},
  {name: "Diminished", interval: "3,3", number: 4},
  {name: "Major Seventh", interval: "4,3,4", number: 5},
  {name: "Dominant Seventh", interval: "4,3,3", number: 6}
])
PianoNote.create!([
  {note: "C", number: 1, key: "white", alt_note: ""},
  {note: "Db", number: 2, key: "black", alt_note: "C#"},
  {note: "D", number: 3, key: "white", alt_note: ""},
  {note: "Eb", number: 4, key: "black", alt_note: "D#"},
  {note: "E", number: 5, key: "white", alt_note: ""},
  {note: "F", number: 6, key: "white", alt_note: ""},
  {note: "Gb", number: 7, key: "black", alt_note: "F#"},
  {note: "G", number: 8, key: "white", alt_note: ""},
  {note: "Ab", number: 9, key: "black", alt_note: "G#"},
  {note: "A", number: 10, key: "white", alt_note: ""},
  {note: "Bb", number: 11, key: "black", alt_note: "A#"},
  {note: "B", number: 12, key: "white", alt_note: ""},
  {note: "C", number: 13, key: "white", alt_note: ""},
  {note: "Db", number: 14, key: "black", alt_note: "C#"},
  {note: "D", number: 15, key: "white", alt_note: ""},
  {note: "Eb", number: 16, key: "black", alt_note: "D#"},
  {note: "E", number: 17, key: "white", alt_note: ""},
  {note: "F", number: 18, key: "white", alt_note: ""},
  {note: "Gb", number: 19, key: "black", alt_note: "F#"},
  {note: "G", number: 20, key: "white", alt_note: ""},
  {note: "Ab", number: 21, key: "black", alt_note: "G#"},
  {note: "A", number: 22, key: "white", alt_note: ""},
  {note: "Bb", number: 23, key: "black", alt_note: "A#"},
  {note: "B", number: 24, key: "white", alt_note: ""},
  {note: "C", number: 25, key: "white", alt_note: ""}
])
PianoScale.create!([
  {name: "Major", interval: "2,2,1,2,2,2,1"}
])
SaxNote.create!([
  {note: "Gb3", note_image_file_name: "F_3.png", note_image_content_type: nil, note_image_file_size: nil, note_image_updated_at: nil, number: 33, drive_image: "https://farm5.staticflickr.com/4518/37410083104_39297f4e66_o_d.png"},
  {note: "Gb2", note_image_file_name: "F_2.png", note_image_content_type: nil, note_image_file_size: nil, note_image_updated_at: nil, number: 21, drive_image: "https://farm5.staticflickr.com/4568/37410083144_82f4e3c679_o_d.png"},
  {note: "Gb1", note_image_file_name: "F_1.png", note_image_content_type: nil, note_image_file_size: nil, note_image_updated_at: nil, number: 9, drive_image: "https://farm5.staticflickr.com/4507/37410083174_a74a7e9328_o_d.png"},
  {note: "G2", note_image_file_name: "G2.png", note_image_content_type: nil, note_image_file_size: nil, note_image_updated_at: nil, number: 22, drive_image: "https://farm5.staticflickr.com/4521/37410083274_e4da983359_o_d.png"},
  {note: "G1", note_image_file_name: "G1.png", note_image_content_type: nil, note_image_file_size: nil, note_image_updated_at: nil, number: 10, drive_image: "https://farm5.staticflickr.com/4543/37410083314_6ef57fdcb6_o_d.png"},
  {note: "F3", note_image_file_name: "F3.png", note_image_content_type: nil, note_image_file_size: nil, note_image_updated_at: nil, number: 32, drive_image: "https://farm5.staticflickr.com/4502/37410083384_7c45c4cc4a_o_d.png"},
  {note: "F2", note_image_file_name: "F2.png", note_image_content_type: nil, note_image_file_size: nil, note_image_updated_at: nil, number: 20, drive_image: "https://farm5.staticflickr.com/4470/37410083424_2dc16d8c61_o_d.png"},
  {note: "F1", note_image_file_name: "F1.png", note_image_content_type: nil, note_image_file_size: nil, note_image_updated_at: nil, number: 8, drive_image: "https://farm5.staticflickr.com/4548/37410083494_158020a296_o_d.png"},
  {note: "Eb3", note_image_file_name: "Eb3.png", note_image_content_type: nil, note_image_file_size: nil, note_image_updated_at: nil, number: 30, drive_image: "https://farm5.staticflickr.com/4545/37410083574_34bef6ca10_o_d.png"},
  {note: "Eb2", note_image_file_name: "D_2.png", note_image_content_type: nil, note_image_file_size: nil, note_image_updated_at: nil, number: 18, drive_image: "https://farm5.staticflickr.com/4580/37410083644_bf2970d3a7_o_d.png"},
  {note: "Eb1", note_image_file_name: "D_1.png", note_image_content_type: nil, note_image_file_size: nil, note_image_updated_at: nil, number: 6, drive_image: "https://farm5.staticflickr.com/4525/37410083704_3af71925a7_o_d.png"},
  {note: "E3", note_image_file_name: "E3.png", note_image_content_type: nil, note_image_file_size: nil, note_image_updated_at: nil, number: 31, drive_image: "https://farm5.staticflickr.com/4482/37410083874_06d608db27_o_d.png"},
  {note: "E2", note_image_file_name: "E2.png", note_image_content_type: nil, note_image_file_size: nil, note_image_updated_at: nil, number: 19, drive_image: "https://farm5.staticflickr.com/4455/37410083914_511d6c5a65_o_d.png"},
  {note: "E1", note_image_file_name: "E1.png", note_image_content_type: nil, note_image_file_size: nil, note_image_updated_at: nil, number: 7, drive_image: "https://farm5.staticflickr.com/4535/37410083974_74b3ebf427_o_d.png"},
  {note: "Db3", note_image_file_name: "C_3.png", note_image_content_type: nil, note_image_file_size: nil, note_image_updated_at: nil, number: 28, drive_image: "https://farm5.staticflickr.com/4501/37410084014_3e015a614f_o_d.png"},
  {note: "Db2", note_image_file_name: "C_2.png", note_image_content_type: nil, note_image_file_size: nil, note_image_updated_at: nil, number: 16, drive_image: "https://farm5.staticflickr.com/4559/37410084134_4b3e150e1b_o_d.png"},
  {note: "Db1", note_image_file_name: "C_1.png", note_image_content_type: nil, note_image_file_size: nil, note_image_updated_at: nil, number: 4, drive_image: "https://farm5.staticflickr.com/4522/38087980392_5d48e82bc8_o_d.png"},
  {note: "D3", note_image_file_name: "D3.png", note_image_content_type: nil, note_image_file_size: nil, note_image_updated_at: nil, number: 29, drive_image: "https://farm5.staticflickr.com/4546/38119174431_404a12b1a7_o_d.png"},
  {note: "D2", note_image_file_name: "D2.png", note_image_content_type: nil, note_image_file_size: nil, note_image_updated_at: nil, number: 17, drive_image: "https://farm5.staticflickr.com/4450/38119174581_3abb29bfde_o_d.png"},
  {note: "D1", note_image_file_name: "D1.png", note_image_content_type: nil, note_image_file_size: nil, note_image_updated_at: nil, number: 5, drive_image: "https://farm5.staticflickr.com/4474/38119174691_70d201fe31_o_d.png"},
  {note: "C3", note_image_file_name: "C3.png", note_image_content_type: nil, note_image_file_size: nil, note_image_updated_at: nil, number: 27, drive_image: "https://farm5.staticflickr.com/4518/38119174791_12b4ff3d40_o_d.png"},
  {note: "C2", note_image_file_name: "C2.png", note_image_content_type: nil, note_image_file_size: nil, note_image_updated_at: nil, number: 15, drive_image: "https://farm5.staticflickr.com/4512/38119174931_baaee48411_o_d.png"},
  {note: "C1", note_image_file_name: "C1.png", note_image_content_type: nil, note_image_file_size: nil, note_image_updated_at: nil, number: 3, drive_image: "https://farm5.staticflickr.com/4445/38119175101_744f47c6b6_o_d.png"},
  {note: "Bb3", note_image_file_name: "A_2.png", note_image_content_type: nil, note_image_file_size: nil, note_image_updated_at: nil, number: 25, drive_image: "https://farm5.staticflickr.com/4457/38119175211_03eae9919c_o_d.png"},
  {note: "Bb2", note_image_file_name: "A_1.png", note_image_content_type: nil, note_image_file_size: nil, note_image_updated_at: nil, number: 13, drive_image: "https://farm5.staticflickr.com/4550/38119175331_7440bbe6c2_o_d.png"},
  {note: "Bb1", note_image_file_name: "Bb1.png", note_image_content_type: nil, note_image_file_size: nil, note_image_updated_at: nil, number: 1, drive_image: "https://farm5.staticflickr.com/4533/38119175521_daf59a0774_o_d.png"},
  {note: "B3", note_image_file_name: "B3.png", note_image_content_type: nil, note_image_file_size: nil, note_image_updated_at: nil, number: 26, drive_image: "https://farm5.staticflickr.com/4479/38119175701_7289bd1fa6_o_d.png"},
  {note: "B2", note_image_file_name: "B2.png", note_image_content_type: nil, note_image_file_size: nil, note_image_updated_at: nil, number: 14, drive_image: "https://farm5.staticflickr.com/4469/38119175811_799460ae1f_o_d.png"},
  {note: "B1", note_image_file_name: "B1.png", note_image_content_type: nil, note_image_file_size: nil, note_image_updated_at: nil, number: 2, drive_image: "https://farm5.staticflickr.com/4483/38119175971_e7c1a75d55_o_d.png"},
  {note: "Ab2", note_image_file_name: "G_2.png", note_image_content_type: nil, note_image_file_size: nil, note_image_updated_at: nil, number: 23, drive_image: "https://farm5.staticflickr.com/4508/38087981602_d07a41f9b5_o_d.png"},
  {note: "Ab1", note_image_file_name: "G_1.png", note_image_content_type: nil, note_image_file_size: nil, note_image_updated_at: nil, number: 11, drive_image: "https://farm5.staticflickr.com/4582/38087981742_6f6fb1a9d0_o_d.png"},
  {note: "A2", note_image_file_name: "A2.png", note_image_content_type: nil, note_image_file_size: nil, note_image_updated_at: nil, number: 24, drive_image: "https://farm5.staticflickr.com/4580/38087981772_98d47e44a1_o_d.png"},
  {note: "A1", note_image_file_name: "A1.png", note_image_content_type: nil, note_image_file_size: nil, note_image_updated_at: nil, number: 12, drive_image: "https://farm5.staticflickr.com/4444/38087981882_c0291a306e_o_d.png"}
])
Scale.create!([
  {name: "Major", value: "2,2,1,2,2,2,1"},
  {name: "Natural Minor", value: "2,1,2,2,1,2,2"},
  {name: "Harmonic Minor", value: "2,1,2,2,1,3,1"},
  {name: "Melodic Minor", value: "2,1,2,2,2,2,1"},
  {name: "Dorian", value: "2,1,2,2,2,1,2"},
  {name: "Phrygian", value: "1,2,2,2,1,2,2"},
  {name: "Mixolydian", value: "2,2,1,2,2,1,2"},
  {name: "Aeolian", value: "2,1,2,2,1,2,2"},
  {name: "Ionian", value: "2,2,1,2,2,2,1"},
  {name: "Locrian", value: "1,2,2,1,2,2,2"},
  {name: "Pentatonic", value: "2,2,3,2,3"},
  {name: "Blues", value: "2,1,2,2,1,2"}
])
User.create!([
  {email: "blealf@gmail.com", password_digest: "$2a$10$HWbVa8/QPxCTF.CIttZeSOL7saKMIc1Vn/8jflcqnB8W42UZjJtaG", remember_digest: nil, admin: false},
  {email: "blealf20@gmail.com", password_digest: "$2a$10$/K2nznTalub2i5QG6yOVO.YgYpAzJJSf6GdwOmOeF0n2eAzUIAoSK", remember_digest: nil, admin: true}
])
