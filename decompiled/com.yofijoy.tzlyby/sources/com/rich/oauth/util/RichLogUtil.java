package com.rich.oauth.util;

import android.util.Log;
import java.io.StringReader;
import java.io.StringWriter;
import java.text.Format;
import java.text.SimpleDateFormat;
import java.util.Formatter;
import java.util.concurrent.ExecutorService;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.stream.StreamResult;
import javax.xml.transform.stream.StreamSource;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class RichLogUtil {
    public static final int A = 7;
    public static final String ARGS = "args";
    public static final String BOTTOM_BORDER = "└────────────────────────────────────────────────────────────────────────────────────────────────────────────────";
    public static final String BOTTOM_CORNER = "└";
    public static final int D = 3;
    public static final int E = 6;
    public static final int FILE = 16;
    public static final int I = 4;
    public static final int JSON = 32;
    public static final String LEFT_BORDER = "│ ";
    public static final int MAX_LEN = 4000;
    public static final String MIDDLE_BORDER = "├┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄";
    public static final String MIDDLE_CORNER = "├";
    public static final String MIDDLE_DIVIDER = "┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄";
    public static final String NOTHING = "log nothing";
    public static final String NULL = "null";
    public static final String SIDE_DIVIDER = "────────────────────────────────────────────────────────";
    public static final String TOP_BORDER = "┌────────────────────────────────────────────────────────────────────────────────────────────────────────────────";
    public static final String TOP_CORNER = "┌";
    public static final int V = 2;
    public static final int W = 5;
    public static final int XML = 48;
    public static ExecutorService sExecutor;
    public static final char[] T = {'V', 'D', 'I', 'W', 'E', 'A'};
    public static final String FILE_SEP = System.getProperty("file.separator");
    public static final String LINE_SEP = System.getProperty("line.separator");
    public static final Format FORMAT = new SimpleDateFormat("MM-dd HH:mm:ss.SSS ");
    public static String sFilePrefix = "util";
    public static boolean sLogSwitch = true;
    public static boolean sLog2ConsoleSwitch = true;
    public static String sGlobalTag = "RichOauthSDK";
    public static boolean sTagIsSpace = true;
    public static boolean sLogHeadSwitch = true;
    public static boolean sLog2FileSwitch = false;
    public static boolean sLogBorderSwitch = true;
    public static int sConsoleFilter = 2;
    public static int sFileFilter = 2;
    public static int sStackDeep = 1;

    /* loaded from: classes.dex */
    public static class TagHead {
        public String[] consoleHead;
        public String fileHead;
        public String tag;

        public TagHead(String str, String[] strArr, String str2) {
            this.tag = str;
            this.consoleHead = strArr;
            this.fileHead = str2;
        }
    }

    public RichLogUtil() {
        throw new UnsupportedOperationException("u can't instantiate me...");
    }

    public static void a(Object... objArr) {
        log(7, sGlobalTag, objArr);
    }

    public static void aTag(String str, Object... objArr) {
        log(7, str, objArr);
    }

    public static void d(Object... objArr) {
        log(3, sGlobalTag, objArr);
    }

    public static void dTag(String str, Object... objArr) {
        log(3, str, objArr);
    }

    public static void e(Object... objArr) {
        log(6, sGlobalTag, objArr);
    }

    public static void eTag(String str, Object... objArr) {
        log(6, str, objArr);
    }

    public static void file(int i, Object obj) {
        log(i | 16, sGlobalTag, obj);
    }

    public static void file(int i, String str, Object obj) {
        log(i | 16, str, obj);
    }

    public static void file(Object obj) {
        log(19, sGlobalTag, obj);
    }

    public static void file(String str, Object obj) {
        log(19, str, obj);
    }

    public static String formatJson(String str) {
        try {
            if (str.startsWith("{")) {
                str = new JSONObject(str).toString(4);
            } else if (str.startsWith("[")) {
                str = new JSONArray(str).toString(4);
            }
        } catch (JSONException e) {
            e.printStackTrace();
        }
        return str;
    }

    public static String formatXml(String str) {
        try {
            StreamSource streamSource = new StreamSource(new StringReader(str));
            StreamResult streamResult = new StreamResult(new StringWriter());
            Transformer newTransformer = TransformerFactory.newInstance().newTransformer();
            newTransformer.setOutputProperty("indent", "yes");
            newTransformer.setOutputProperty("{http://xml.apache.org/xslt}indent-amount", "4");
            newTransformer.transform(streamSource, streamResult);
            return streamResult.getWriter().toString().replaceFirst(">", ">" + LINE_SEP);
        } catch (Exception e) {
            e.printStackTrace();
            return str;
        }
    }

    public static void i(Object... objArr) {
        log(4, sGlobalTag, objArr);
    }

    public static void iTag(String str, Object... objArr) {
        log(4, str, objArr);
    }

    public static boolean isSpace(String str) {
        if (str == null) {
            return true;
        }
        int length = str.length();
        for (int i = 0; i < length; i++) {
            if (!Character.isWhitespace(str.charAt(i))) {
                return false;
            }
        }
        return true;
    }

    public static void json(int i, String str) {
        log(i | 32, sGlobalTag, str);
    }

    public static void json(int i, String str, String str2) {
        log(i | 32, str, str2);
    }

    public static void json(String str) {
        log(35, sGlobalTag, str);
    }

    public static void json(String str, String str2) {
        log(35, str, str2);
    }

    public static void log(int i, String str, Object... objArr) {
        if (sLogSwitch) {
            if (sLog2ConsoleSwitch || sLog2FileSwitch) {
                int i2 = i & 15;
                int i3 = i & 240;
                if (i2 >= sConsoleFilter || i2 >= sFileFilter) {
                    TagHead processTagAndHead = processTagAndHead(str);
                    String processBody = processBody(i3, objArr);
                    if (!sLog2ConsoleSwitch || i2 < sConsoleFilter || i3 == 16) {
                        return;
                    }
                    print2Console(i2, processTagAndHead.tag, processTagAndHead.consoleHead, processBody);
                }
            }
        }
    }

    public static void print2Console(int i, String str, String[] strArr, String str2) {
        printBorder(i, str, true);
        printHead(i, str, strArr);
        printMsg(i, str, str2);
        printBorder(i, str, false);
    }

    public static void printBorder(int i, String str, boolean z) {
        if (sLogBorderSwitch) {
            Log.println(i, str, z ? TOP_BORDER : BOTTOM_BORDER);
        }
    }

    public static void printHead(int i, String str, String[] strArr) {
        if (strArr != null) {
            for (String str2 : strArr) {
                if (sLogBorderSwitch) {
                    str2 = LEFT_BORDER + str2;
                }
                Log.println(i, str, str2);
            }
            if (sLogBorderSwitch) {
                Log.println(i, str, MIDDLE_BORDER);
            }
        }
    }

    public static void printMsg(int i, String str, String str2) {
        int length = str2.length();
        int i2 = length / MAX_LEN;
        if (i2 > 0) {
            int i3 = 0;
            int i4 = 0;
            while (i3 < i2) {
                int i5 = i4 + MAX_LEN;
                printSubMsg(i, str, str2.substring(i4, i5));
                i3++;
                i4 = i5;
            }
            if (i4 == length) {
                return;
            } else {
                str2 = str2.substring(i4, length);
            }
        }
        printSubMsg(i, str, str2);
    }

    public static void printSubMsg(int i, String str, String str2) {
        if (!sLogBorderSwitch) {
            Log.println(i, str, str2);
            return;
        }
        for (String str3 : str2.split(LINE_SEP)) {
            Log.println(i, str, LEFT_BORDER + str3);
        }
    }

    public static String processBody(int i, Object... objArr) {
        String str;
        str = "null";
        if (objArr != null) {
            if (objArr.length == 1) {
                Object obj = objArr[0];
                str = obj != null ? obj.toString() : "null";
                if (i == 32) {
                    str = formatJson(str);
                } else if (i == 48) {
                    str = formatXml(str);
                }
            } else {
                StringBuilder sb = new StringBuilder();
                int length = objArr.length;
                for (int i2 = 0; i2 < length; i2++) {
                    Object obj2 = objArr[i2];
                    sb.append(ARGS);
                    sb.append("[");
                    sb.append(i2);
                    sb.append("]");
                    sb.append(" = ");
                    sb.append(obj2 == null ? "null" : obj2.toString());
                    sb.append(LINE_SEP);
                }
                str = sb.toString();
            }
        }
        return str.length() == 0 ? NOTHING : str;
    }

    public static TagHead processTagAndHead(String str) {
        String str2;
        String str3;
        if (sTagIsSpace || sLogHeadSwitch) {
            StackTraceElement[] stackTrace = new Throwable().getStackTrace();
            StackTraceElement stackTraceElement = stackTrace[3];
            String fileName = stackTraceElement.getFileName();
            if (fileName == null) {
                fileName = stackTraceElement.getClassName();
                String[] split = fileName.split("\\.");
                if (split.length > 0) {
                    fileName = split[split.length - 1];
                }
                int indexOf = fileName.indexOf(36);
                if (indexOf != -1) {
                    fileName = fileName.substring(0, indexOf);
                }
                str2 = fileName + ".java";
            } else {
                int indexOf2 = fileName.indexOf(46);
                if (indexOf2 == -1) {
                    str2 = fileName;
                } else {
                    str2 = fileName;
                    fileName = fileName.substring(0, indexOf2);
                }
            }
            if (!sTagIsSpace || !isSpace(str)) {
                fileName = str;
            }
            if (sLogHeadSwitch) {
                String name = Thread.currentThread().getName();
                String formatter = new Formatter().format("%s, %s(%s:%d)", name, stackTraceElement.getMethodName(), str2, Integer.valueOf(stackTraceElement.getLineNumber())).toString();
                String str4 = " [" + formatter + "]: ";
                int i = sStackDeep;
                if (i <= 1) {
                    return new TagHead(fileName, new String[]{formatter}, str4);
                }
                int min = Math.min(i, stackTrace.length - 3);
                String[] strArr = new String[min];
                strArr[0] = formatter;
                int length = name.length() + 2;
                String formatter2 = new Formatter().format("%" + length + "s", "").toString();
                for (int i2 = 1; i2 < min; i2++) {
                    StackTraceElement stackTraceElement2 = stackTrace[i2 + 3];
                    strArr[i2] = new Formatter().format("%s%s(%s:%d)", formatter2, stackTraceElement2.getMethodName(), stackTraceElement2.getFileName(), Integer.valueOf(stackTraceElement2.getLineNumber())).toString();
                }
                return new TagHead(fileName, strArr, str4);
            }
            str3 = fileName;
        } else {
            str3 = sGlobalTag;
        }
        return new TagHead(str3, null, ": ");
    }

    public static void v(Object... objArr) {
        log(2, sGlobalTag, objArr);
    }

    public static void vTag(String str, Object... objArr) {
        log(2, str, objArr);
    }

    public static void w(Object... objArr) {
        log(5, sGlobalTag, objArr);
    }

    public static void wTag(String str, Object... objArr) {
        log(5, str, objArr);
    }

    public static void xml(int i, String str) {
        log(i | 48, sGlobalTag, str);
    }

    public static void xml(int i, String str, String str2) {
        log(i | 48, str, str2);
    }

    public static void xml(String str) {
        log(51, sGlobalTag, str);
    }

    public static void xml(String str, String str2) {
        log(51, str, str2);
    }
}
