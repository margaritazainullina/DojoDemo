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
        String json = "{"
                + "user1: User One,"
                + "user2: User Two,"
                + "user3: User Three}";
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