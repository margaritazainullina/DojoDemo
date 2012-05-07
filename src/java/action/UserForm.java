package action;

import com.opensymphony.xwork2.ActionContext;
import java.io.InputStream;
import com.opensymphony.xwork2.ActionSupport;
import java.io.ByteArrayInputStream;
import java.io.UnsupportedEncodingException;
import java.util.Map;

public class UserForm extends ActionSupport {
    private InputStream xmlStream;
    private Map<String, Object> parameters;    

    @Override
    public String execute() throws Exception {
        xmlStream = convert(getParameterValue("bio"));
        return SUCCESS;
    }

    private static InputStream convert(String str) {
        InputStream is = null;
        try {
            is = new ByteArrayInputStream(str.getBytes("UTF-8"));
        } catch (UnsupportedEncodingException e) {}
        return is;
    }

    public InputStream getXmlStream() {
        return xmlStream;
    }

    public void setXmlStream(InputStream xmlStream) {
        this.xmlStream = xmlStream;
    }

    public final Map getParameters() {
        parameters = ActionContext.getContext().getParameters();
        return parameters;
    }

    public String getParameterValue(String param) {
        Object paramObj = getParameters().get(param);
        if (paramObj == null) return null;
        else return ((String[]) paramObj)[0];
    }
}