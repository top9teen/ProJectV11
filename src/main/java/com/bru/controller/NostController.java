package com.bru.controller;


import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;


import javax.xml.parsers.ParserConfigurationException;




import com.itextpdf.text.Document;
import com.itextpdf.text.DocumentException;
import com.itextpdf.text.pdf.PdfWriter;
import com.itextpdf.tool.xml.XMLWorkerHelper;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class NostController {

	private static final String HTML = "src/main/webapp/jsp/member/UPDETE.html";
	
	
	
	private static void generatePDFFromHTML(String filename) throws ParserConfigurationException, IOException, DocumentException {
		Document document = new Document();
		PdfWriter writer = PdfWriter.getInstance(document, new FileOutputStream("src/main/webapp/jsp/DEMO.pdf"));
		document.open();
		XMLWorkerHelper.getInstance().parseXHtml(writer, document, new FileInputStream(filename));
		document.close();
	}
	
	@RequestMapping("/noo")
	public void sdsd() {
		
		try {
			generatePDFFromHTML(HTML);
		} catch (IOException | ParserConfigurationException | DocumentException e) {
			e.printStackTrace();
		}
	}
}

