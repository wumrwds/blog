package xyz.fwblog.manager.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import xyz.fwblog.commons.pojo.FileResponse;
import xyz.fwblog.manager.service.FileService;

@Controller
@RequestMapping("/file")
public class FileController {
	@Resource
	private FileService fileService;
	
	@RequestMapping("/upload")
	@ResponseBody
	public FileResponse uploadFile(MultipartFile uploadFile) {
		return fileService.saveFile(uploadFile);
	}
}
