package xyz.fwblog.manager.service.impl;

import org.csource.util.FastDFSClient;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import xyz.fwblog.commons.pojo.FileResponse;
import xyz.fwblog.manager.service.FileService;

@Service
public class FileServiceImpl implements FileService {
	@Value("${fastdfs.FILE_SERVER_URL}")
	private String fileServerUrl;
	
	@Override
	public FileResponse saveFile(MultipartFile file) {
		FileResponse response = new FileResponse();
		
		// 传过来的文件为空，则返回错误信息
		if(file.isEmpty()) {
			response.setError(1);
			response.setMessage("未正常上传文件，请重新上传");
			return response;
		}
		
		try {
			String fileName = file.getOriginalFilename();
			
			// 保存到FastDFS服务器的时候会重命名，因此取扩展名，不需要'.'
			String extName = fileName.substring(fileName.lastIndexOf(".") + 1);
			FastDFSClient dfsClient = new FastDFSClient("classpath:fastdfs/client.conf");
			
			// 加上原先服务器的base url
			String fileUrl = fileServerUrl + dfsClient.uploadFile(file.getBytes(), extName);
			response.setError(0);
			response.setUrl(fileUrl);
			return response;
		} catch(Exception e) {
			e.printStackTrace();
			response.setError(1);
			response.setMessage("上传文件至服务器出错");
			return response;
		}
	}
}
