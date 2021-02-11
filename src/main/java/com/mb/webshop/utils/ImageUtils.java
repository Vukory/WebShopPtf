package com.mb.webshop.utils;

import com.mb.webshop.entities.Product;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.util.Base64;

public final class ImageUtils {
    public static String toBase64(MultipartFile file) throws IOException {
        byte[] fileContent = file.getBytes();
        String encodedString = Base64.getEncoder().encodeToString(fileContent);

        String fileType=file.getContentType();
        String prepended="data:"+fileType+";base64,";
        String image=prepended+encodedString;
        return image;
    }
}
