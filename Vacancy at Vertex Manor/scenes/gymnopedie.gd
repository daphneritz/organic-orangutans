extends AudioStreamPlayer2D

const level_music = preload("res://assets/audio assets/Gymnopedie No 1.mp3")

func play_music(music: AudioStream, volume: float = 0.0) -> void:
	if stream == music and playing:
		return
	stream = music
	volume_db = volume
	play()
	
func play_music_level(): 
	play_music(level_music)
