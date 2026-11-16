package com.qq.gdt.action.j;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class s {
    private static final String a = com.qq.gdt.action.e.a().g().getFilesDir() + File.separator + "gdtDir" + File.separator + "gdt_user_message_v5";

    public static synchronized com.qq.gdt.action.multioprocess.b a() {
        com.qq.gdt.action.multioprocess.b bVar;
        Object th;
        ObjectInputStream objectInputStream;
        synchronized (s.class) {
            if (!com.qq.gdt.action.multioprocess.a.a().c()) {
                o.a("UserMessage get() no fill，no get info", new Object[0]);
                return null;
            }
            o.a("SerializableUtils get userinfo", new Object[0]);
            com.qq.gdt.action.h.a.a(3402);
            try {
                objectInputStream = new ObjectInputStream(new FileInputStream(a));
                try {
                    bVar = (com.qq.gdt.action.multioprocess.b) objectInputStream.readObject();
                    try {
                        com.qq.gdt.action.h.a.a(3403);
                        try {
                            objectInputStream.close();
                        } catch (Throwable th2) {
                            o.a("SerializableUtils get close ex = " + th2, new Object[0]);
                        }
                    } catch (Throwable th3) {
                        th = th3;
                        try {
                            o.a("SerializableUtils get ex = " + th, new Object[0]);
                            com.qq.gdt.action.h.a.a(3404);
                            try {
                                objectInputStream.close();
                            } catch (Throwable th4) {
                                o.a("SerializableUtils get close ex = " + th4, new Object[0]);
                            }
                            return bVar;
                        } finally {
                        }
                    }
                } catch (Throwable th5) {
                    bVar = null;
                    th = th5;
                }
            } catch (Throwable th6) {
                bVar = null;
                th = th6;
                objectInputStream = null;
            }
            return bVar;
        }
    }

    public static synchronized void a(final com.qq.gdt.action.multioprocess.b bVar) {
        synchronized (s.class) {
            if (com.qq.gdt.action.multioprocess.a.a().c()) {
                j.a().b().execute(new Runnable() { // from class: com.qq.gdt.action.j.s.1
                    @Override // java.lang.Runnable
                    public void run() {
                        o.a("cp信息开始存储 SerializableUtils save, userMessage = " + com.qq.gdt.action.multioprocess.b.this, new Object[0]);
                        long currentTimeMillis = System.currentTimeMillis();
                        com.qq.gdt.action.h.a.a(3304, com.qq.gdt.action.multioprocess.b.this);
                        ObjectOutputStream objectOutputStream = null;
                        try {
                            File file = new File(s.a);
                            if (file.exists()) {
                                file.delete();
                            }
                            if (!file.getParentFile().exists()) {
                                o.a("creating parent directory...", new Object[0]);
                                if (!file.getParentFile().mkdirs()) {
                                    throw new Exception("created parent directory failed.");
                                }
                            }
                            file.createNewFile();
                            ObjectOutputStream objectOutputStream2 = new ObjectOutputStream(new FileOutputStream(s.a));
                            try {
                                objectOutputStream2.writeObject(com.qq.gdt.action.multioprocess.b.this);
                                long currentTimeMillis2 = System.currentTimeMillis() - currentTimeMillis;
                                JSONObject jSONObject = new JSONObject();
                                jSONObject.put("ipcSaveFileTimeSuccess", currentTimeMillis2);
                                com.qq.gdt.action.h.a.a(3305, jSONObject, com.qq.gdt.action.multioprocess.b.this);
                                o.a("cp save file successTime cost = " + currentTimeMillis2, new Object[0]);
                                try {
                                    objectOutputStream2.close();
                                } catch (Throwable th) {
                                    o.a("SerializableUtils save fileclose ex = " + th, new Object[0]);
                                }
                            } catch (Throwable th2) {
                                th = th2;
                                objectOutputStream = objectOutputStream2;
                                try {
                                    o.a("SerializableUtils cp save file  save ex  = " + th, new Object[0]);
                                    com.qq.gdt.action.h.a.a(3306, com.qq.gdt.action.multioprocess.b.this);
                                    try {
                                        objectOutputStream.close();
                                    } catch (Throwable th3) {
                                        o.a("SerializableUtils save fileclose ex = " + th3, new Object[0]);
                                    }
                                    long currentTimeMillis3 = System.currentTimeMillis() - currentTimeMillis;
                                    new JSONObject().put("ipcSaveFileTimeEnd", currentTimeMillis3);
                                    o.a("save file endTime cost = " + currentTimeMillis3 + " userMessage = " + com.qq.gdt.action.multioprocess.b.this, new Object[0]);
                                } catch (Throwable th4) {
                                    try {
                                        objectOutputStream.close();
                                    } catch (Throwable th5) {
                                        o.a("SerializableUtils save fileclose ex = " + th5, new Object[0]);
                                    }
                                    throw th4;
                                }
                            }
                        } catch (Throwable th6) {
                            th = th6;
                        }
                        long currentTimeMillis32 = System.currentTimeMillis() - currentTimeMillis;
                        try {
                            new JSONObject().put("ipcSaveFileTimeEnd", currentTimeMillis32);
                        } catch (JSONException e) {
                            e.printStackTrace();
                        }
                        o.a("save file endTime cost = " + currentTimeMillis32 + " userMessage = " + com.qq.gdt.action.multioprocess.b.this, new Object[0]);
                    }
                });
            } else {
                o.a("UserMessage save() 未开启补齐信息，不进行文件保存信息", new Object[0]);
            }
        }
    }

    public static synchronized void a(final com.qq.gdt.action.multioprocess.c cVar) {
        synchronized (s.class) {
            if (com.qq.gdt.action.multioprocess.a.a().c()) {
                j.a().b().execute(new Runnable() { // from class: com.qq.gdt.action.j.s.2
                    @Override // java.lang.Runnable
                    public void run() {
                        com.qq.gdt.action.multioprocess.c.this.a(s.a());
                    }
                });
            } else {
                o.a("UserMessage getAsync() no fill，no get info", new Object[0]);
                cVar.a(null);
            }
        }
    }
}
