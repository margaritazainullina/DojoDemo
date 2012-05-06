package action;

import java.io.InputStream;
import com.opensymphony.xwork2.ActionSupport;
import java.io.ByteArrayInputStream;
import java.io.UnsupportedEncodingException;
import java.util.Date;
import java.util.List;

public class Sample021Ajax extends ActionSupport {
    private InputStream xmlStream;
    
    public InputStream getXmlStream() {
        return xmlStream;
    }
    public String execute() throws Exception {
        Date date = new Date();
        xmlStream = convert("Current time is " + date.toString()); 
        return SUCCESS;
    }
    private static InputStream convert(String str) {
        InputStream is = null;
        try { is = new ByteArrayInputStream(str.getBytes("UTF-8")); } 
        catch (UnsupportedEncodingException e) { e.printStackTrace(); }
        return is;
    }
}