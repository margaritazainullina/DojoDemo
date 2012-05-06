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

    static {
        names.add("Rita");
        names.add("Radik");
    }

    public InputStream getXmlStream() {
        return xmlStream;
    }

    public String execute() throws Exception {
        Map parameters = ActionContext.getContext().getParameters();
        xmlStream = convert("undefined");
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
}