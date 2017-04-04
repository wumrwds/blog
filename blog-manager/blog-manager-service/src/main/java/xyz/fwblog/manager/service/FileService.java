package xyz.fwblog.manager.service;

import org.springframework.web.multipart.MultipartFile;

import xyz.fwblog.commons.pojo.FileResponse;

public interface FileService {

	FileResponse saveFile(MultipartFile file);

}
