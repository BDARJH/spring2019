package com.bit.day10;

import org.springframework.web.multipart.MultipartFile;

public class FileVo {
	MultipartFile[] files;
	
	public MultipartFile[] getFiles() {
		return files;
	}
	
	public void setFiles(MultipartFile[] files) {
		this.files = files;
	}
}
