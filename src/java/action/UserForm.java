package action;

import java.io.InputStream;
import com.opensymphony.xwork2.ActionSupport;
import java.io.ByteArrayInputStream;
import java.io.UnsupportedEncodingException;

public class UserForm extends ActionSupport {

    private InputStream xmlStream;
    private String form;

    public InputStream getXmlStream() {
        return xmlStream;
    }

    @Override
    public String execute() throws Exception {

        xmlStream = convert(form);
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

    public String getForm() {
        return form;
    }

    public void setForm(String form) {
        this.form = form;
    }
}