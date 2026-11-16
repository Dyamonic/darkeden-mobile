package com.bytedance.bdtracker;

import com.bytedance.applog.log.IAppLogLogger;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.regex.Pattern;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class j5 {
    public static final List<String> a = Collections.singletonList("Validator");
    public static final Pattern b = Pattern.compile("^[a-zA-Z0-9][a-z0-9A-Z_ .-]{1,255}$");
    public static final List<String> c = Arrays.asList("$inactive", "$inline", "$target_uuid_list", "$source_uuid", "$is_spider", "$source_id", "$is_first_time");

    public static void a(IAppLogLogger iAppLogLogger, String str, JSONObject jSONObject) {
        if (k0.c(str)) {
            iAppLogLogger.warn(a, "Event name must not be empty!", new Object[0]);
        } else {
            if (!b.matcher(str).matches()) {
                iAppLogLogger.warn(a, "Event [" + str + "] name is invalid!", new Object[0]);
            }
            if (str.startsWith("__")) {
                iAppLogLogger.warn(a, "Event [" + str + "] name should not start with __!", new Object[0]);
            }
        }
        if (jSONObject == null || jSONObject.length() == 0) {
            return;
        }
        Iterator<String> keys = jSONObject.keys();
        String a2 = k0.a((Object) str);
        while (keys.hasNext()) {
            String next = keys.next();
            if (k0.c(next)) {
                iAppLogLogger.warn(a, "Event [" + a2 + "] param key must not be empty!", new Object[0]);
            }
            if (!c.contains(next)) {
                if (!b.matcher(next).matches()) {
                    iAppLogLogger.warn(a, "Event [" + a2 + "] param key [" + next + "] is invalid!", new Object[0]);
                }
                if (next.startsWith("__")) {
                    iAppLogLogger.warn(a, "Event [" + a2 + "] param key [" + next + "] should not start with __!", new Object[0]);
                }
            }
            Object opt = jSONObject.opt(next);
            if ((opt instanceof String) && ((String) opt).length() > 1024) {
                iAppLogLogger.warn(a, "Event [" + a2 + "] param key [" + next + "] value is limited to a maximum of 1024 characters!", new Object[0]);
            }
        }
    }

    public static void a(IAppLogLogger iAppLogLogger, Map<String, Object> map) {
        if (map == null) {
            return;
        }
        for (String str : map.keySet()) {
            if (k0.c(str)) {
                iAppLogLogger.warn(a, "Header name must not be empty!", new Object[0]);
            }
            if (!c.contains(str)) {
                if (!b.matcher(str).matches()) {
                    iAppLogLogger.warn(a, "Header [" + str + "] name is invalid!", new Object[0]);
                }
                if (str.startsWith("__")) {
                    iAppLogLogger.warn(a, "Header [" + str + "] name should not start with __!", new Object[0]);
                }
            }
            Object obj = map.get(str);
            if ((obj instanceof String) && ((String) obj).length() > 1024) {
                iAppLogLogger.warn(a, "Header [" + str + "] value is limited to a maximum of 1024 characters!", new Object[0]);
            }
        }
    }

    public static void a(IAppLogLogger iAppLogLogger, JSONObject jSONObject) {
        if (jSONObject == null || jSONObject.length() == 0) {
            return;
        }
        Iterator<String> keys = jSONObject.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            if (k0.c(next)) {
                iAppLogLogger.warn(a, "Profile key must not be empty!", new Object[0]);
            }
            if (!b.matcher(next).matches()) {
                iAppLogLogger.warn(a, "Profile param [" + next + "] name is invalid!", new Object[0]);
            }
            Object opt = jSONObject.opt(next);
            if ((opt instanceof String) && ((String) opt).length() > 1024) {
                iAppLogLogger.warn(a, "Profile param [" + next + "] value is limited to a maximum of 1024 characters!", new Object[0]);
            }
        }
    }
}
