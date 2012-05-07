package action;

import java.io.InputStream;
import com.opensymphony.xwork2.ActionSupport;
import java.io.ByteArrayInputStream;
import java.io.UnsupportedEncodingException;

public class Json extends ActionSupport {

    private InputStream xmlStream;

    public InputStream getXmlStream() {
        return xmlStream;
    }

    @Override
    public String execute() throws Exception {
        String json = "{"
                + "'firstName': 'Иван',"
                + "'lastName': 'Иванов',"
                + "'address': {"
                + "'streetAddress': 'Московское ш., 101, кв.101',"
                + "'city': 'Ленинград',"
                + "'postalCode': 101101"
                + "},"
                + "'phoneNumbers': ["
                + "'812 123-1234',"
                + "'916 123-4567'"
                + " ]"
                + "}";
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