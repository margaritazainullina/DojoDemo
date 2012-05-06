package action;

import com.opensymphony.xwork2.ActionContext;
import java.io.InputStream;
import com.opensymphony.xwork2.ActionSupport;
import java.io.ByteArrayInputStream;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public class CheckUsername extends ActionSupport {

    private InputStream xmlStream;
    private static List<String> names = new ArrayList<String>();
    private String username;

    static {
        names.add("Rita");
        names.add("Radik");
    }

    public InputStream getXmlStream() {
        return xmlStream;
    }

    public String execute() throws Exception {
        for (String str : names) {
            if (username.equals(str)) {
                xmlStream = convert("undefined");
                return SUCCESS;
            }
        }

        xmlStream = convert("available");
        return SUCCESS;
    }

    private static InputStream convert(String str) {
        InputStream is = null;
        try {
            is = new ByteArrayInputStream(str.getBytes("UTF-8"));
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }
        return is;
    }

    public void setUsername(String username) {
        this.username = username;
    }
}