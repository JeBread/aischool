package MusicPlayer;

public class Music {
	
	// 필드
	private String singer;
	private String title;
	private int playTime;
	private String path;
	
	// 생성자 4개의 매개변수
	public Music(String path, String title, String singer,  int playTime) {
		this.path = path;
		this.title = title;
		this.singer = singer;
		this.playTime = playTime;
	}
	
	// getter 4개
	public String getSinger() {
		return singer;
	}
	public String getTitle() {
		return title;
	}
	public int getPlayTime() {
		return playTime;
	}
	public String getPath() {
		return path;
	}
	
	public void showMusic() {
		System.out.print(title + " - " + singer + ", " + playTime/60 + "분 " + playTime%60 + "초");
		System.out.println();
	}
	

}
