package MusicPlayer;

import java.util.ArrayList;

import javazoom.jl.player.MP3Player;

public class Controller {
	
	MP3Player mp3 = new MP3Player();
	
	// 노래가 재생중인지 아닌지 확인 후 노래 멈추는 기능
	// - musicStop() : void
	public void musicStop() {
		
		if (mp3.isPlaying()) {
			mp3.stop();
		}
	}
	
	public int prevMusic(int index, ArrayList<Music> musicList) {
		if (index == 0) {
			index = 9;
		} else {
			index -= 1;
		}
		mp3.play(musicList.get(index).getPath());
		return index;
	}
	
	public int nextMusic(int index, ArrayList<Music> musicList) {
		if (index == 9) {
			index = 0;
		} else {
			index += 1;
		}
		mp3.play(musicList.get(index).getPath());
		return index;
	}

}
