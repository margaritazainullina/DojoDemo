package action;

import java.io.InputStream;
import com.opensymphony.xwork2.ActionSupport;
import java.io.ByteArrayInputStream;
import java.io.UnsupportedEncodingException;

public class JsonSample029 extends ActionSupport {

    private InputStream xmlStream;

    public InputStream getXmlStream() {
        return xmlStream;
    }

    @Override
    public String execute() throws Exception {
        String json = "[{'id':1,'username':'user1','name':'User One'},"
                + "{'id':2,'username':'user2','name':'User Two'},"
                + "{'id':3,'username':'user3','name':'User Three'}]";
        xmlStream = convert(json);
        return SUCCESS;
    }

    private static InputStream convert(String str) {
        InputStream is = null;
        try {
            is = new ByteArrayInputStream(str.getBytes("UTF-8"));
        } catch (UnsupportedEncodingException e) {
        }
        return is;
    }
}