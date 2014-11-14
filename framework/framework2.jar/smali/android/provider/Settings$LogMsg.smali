.class public Landroid/provider/Settings$LogMsg;
.super Ljava/lang/Object;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LogMsg"
.end annotation


# static fields
.field private static final KEY_SETTINGS_DB_CALLSTACK_KEY_LIST:Ljava/lang/String; = "settings_db_callstack_key_list"

.field private static final MAX_SIZE_OF_LOG_FILE:J = 0x100000L

.field private static final SETTINGS_DB_CALLSTACK_LOG_FILE_PATH:Ljava/lang/String; = "/data/log/SettingsDBCallStackLog.txt"

.field private static final SETTINGS_DB_KEY_DEFAULT:Ljava/lang/String; = ";"

.field private static SETTINGS_DB_KEY_LIST:Ljava/lang/String; = null

.field private static final SETTINGS_DB_KEY_UNSETTED:Ljava/lang/String; = "unsetted"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 903
    const-string/jumbo v0, "unsetted"

    sput-object v0, Landroid/provider/Settings$LogMsg;->SETTINGS_DB_KEY_LIST:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 897
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addCallStackDBKey(Landroid/content/ContentResolver;Ljava/lang/String;)V
    .registers 4
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 958
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/provider/Settings$LogMsg;->SETTINGS_DB_KEY_LIST:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/provider/Settings$LogMsg;->SETTINGS_DB_KEY_LIST:Ljava/lang/String;

    .line 959
    const-string/jumbo v0, "settings_db_callstack_key_list"

    sget-object v1, Landroid/provider/Settings$LogMsg;->SETTINGS_DB_KEY_LIST:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 960
    return-void
.end method

.method public static checkToMakeCallStackLog(Landroid/content/ContentResolver;Ljava/lang/String;)Z
    .registers 6
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 908
    :try_start_0
    const-string/jumbo v2, "unsetted"

    sget-object v3, Landroid/provider/Settings$LogMsg;->SETTINGS_DB_KEY_LIST:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 909
    const-string/jumbo v2, "settings_db_callstack_key_list"

    invoke-static {p0, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Landroid/provider/Settings$LogMsg;->SETTINGS_DB_KEY_LIST:Ljava/lang/String;

    .line 910
    sget-object v2, Landroid/provider/Settings$LogMsg;->SETTINGS_DB_KEY_LIST:Ljava/lang/String;

    if-nez v2, :cond_1c

    .line 911
    const-string v2, ";"

    sput-object v2, Landroid/provider/Settings$LogMsg;->SETTINGS_DB_KEY_LIST:Ljava/lang/String;

    .line 915
    :cond_1c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 916
    .local v1, "key":Ljava/lang/String;
    sget-object v2, Landroid/provider/Settings$LogMsg;->SETTINGS_DB_KEY_LIST:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3a} :catch_3c

    move-result v2

    .line 918
    .end local v1    # "key":Ljava/lang/String;
    :goto_3b
    return v2

    .line 917
    :catch_3c
    move-exception v0

    .line 918
    .local v0, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_3b
.end method

.method public static getCallStackDBKey()Ljava/lang/String;
    .registers 1

    .prologue
    .line 964
    sget-object v0, Landroid/provider/Settings$LogMsg;->SETTINGS_DB_KEY_LIST:Ljava/lang/String;

    return-object v0
.end method

.method public static setCallStackDBKey(Landroid/content/ContentResolver;Ljava/lang/String;)V
    .registers 4
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 952
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/provider/Settings$LogMsg;->SETTINGS_DB_KEY_LIST:Ljava/lang/String;

    .line 953
    const-string/jumbo v0, "settings_db_callstack_key_list"

    sget-object v1, Landroid/provider/Settings$LogMsg;->SETTINGS_DB_KEY_LIST:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 954
    return-void
.end method

.method public static writeCallStackLog(Ljava/lang/String;Ljava/lang/String;)V
    .registers 15
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 923
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 924
    .local v4, "now":Ljava/util/Calendar;
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 925
    .local v0, "arrayOutputStream":Ljava/io/ByteArrayOutputStream;
    new-instance v8, Ljava/io/PrintStream;

    invoke-direct {v8, v0}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    .line 926
    .local v8, "pinrtStream":Ljava/io/PrintStream;
    new-instance v9, Ljava/lang/RuntimeException;

    invoke-direct {v9}, Ljava/lang/RuntimeException;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 927
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v3

    .line 928
    .local v3, "msg":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " , "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 929
    .local v7, "output_str":Ljava/lang/String;
    const/4 v1, 0x0

    .line 930
    .local v1, "file":Ljava/io/File;
    const/4 v5, 0x0

    .line 933
    .local v5, "osw":Ljava/io/OutputStreamWriter;
    :try_start_4f
    new-instance v2, Ljava/io/File;

    const-string v9, "/data/log/SettingsDBCallStackLog.txt"

    invoke-direct {v2, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_56} :catch_88
    .catchall {:try_start_4f .. :try_end_56} :catchall_91

    .line 934
    .end local v1    # "file":Ljava/io/File;
    .local v2, "file":Ljava/io/File;
    :try_start_56
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v9

    const-wide/32 v11, 0x100000

    cmp-long v9, v9, v11

    if-lez v9, :cond_a6

    .line 935
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 936
    new-instance v1, Ljava/io/File;

    const-string v9, "/data/log/SettingsDBCallStackLog.txt"

    invoke-direct {v1, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_6b} :catch_a0
    .catchall {:try_start_56 .. :try_end_6b} :catchall_9a

    .line 938
    .end local v2    # "file":Ljava/io/File;
    .restart local v1    # "file":Ljava/io/File;
    :goto_6b
    :try_start_6b
    new-instance v6, Ljava/io/OutputStreamWriter;

    new-instance v9, Ljava/io/FileOutputStream;

    const/4 v10, 0x1

    invoke-direct {v9, v1, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    const-string v10, "UTF-8"

    invoke-direct {v6, v9, v10}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_6b .. :try_end_78} :catch_88
    .catchall {:try_start_6b .. :try_end_78} :catchall_91

    .line 939
    .end local v5    # "osw":Ljava/io/OutputStreamWriter;
    .local v6, "osw":Ljava/io/OutputStreamWriter;
    :try_start_78
    invoke-virtual {v6, v7}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 940
    invoke-virtual {v6}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_78 .. :try_end_7e} :catch_a3
    .catchall {:try_start_78 .. :try_end_7e} :catchall_9d

    .line 944
    if-eqz v6, :cond_83

    .line 945
    :try_start_80
    invoke-virtual {v6}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_83
    .catch Ljava/lang/Exception; {:try_start_80 .. :try_end_83} :catch_85

    :cond_83
    move-object v5, v6

    .line 949
    .end local v6    # "osw":Ljava/io/OutputStreamWriter;
    .restart local v5    # "osw":Ljava/io/OutputStreamWriter;
    :cond_84
    :goto_84
    return-void

    .line 947
    .end local v5    # "osw":Ljava/io/OutputStreamWriter;
    .restart local v6    # "osw":Ljava/io/OutputStreamWriter;
    :catch_85
    move-exception v9

    move-object v5, v6

    .line 948
    .end local v6    # "osw":Ljava/io/OutputStreamWriter;
    .restart local v5    # "osw":Ljava/io/OutputStreamWriter;
    goto :goto_84

    .line 941
    :catch_88
    move-exception v9

    .line 944
    :goto_89
    if-eqz v5, :cond_84

    .line 945
    :try_start_8b
    invoke-virtual {v5}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_8e
    .catch Ljava/lang/Exception; {:try_start_8b .. :try_end_8e} :catch_8f

    goto :goto_84

    .line 947
    :catch_8f
    move-exception v9

    goto :goto_84

    .line 943
    :catchall_91
    move-exception v9

    .line 944
    :goto_92
    if-eqz v5, :cond_97

    .line 945
    :try_start_94
    invoke-virtual {v5}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_97
    .catch Ljava/lang/Exception; {:try_start_94 .. :try_end_97} :catch_98

    .line 947
    :cond_97
    :goto_97
    throw v9

    :catch_98
    move-exception v10

    goto :goto_97

    .line 943
    .end local v1    # "file":Ljava/io/File;
    .restart local v2    # "file":Ljava/io/File;
    :catchall_9a
    move-exception v9

    move-object v1, v2

    .end local v2    # "file":Ljava/io/File;
    .restart local v1    # "file":Ljava/io/File;
    goto :goto_92

    .end local v5    # "osw":Ljava/io/OutputStreamWriter;
    .restart local v6    # "osw":Ljava/io/OutputStreamWriter;
    :catchall_9d
    move-exception v9

    move-object v5, v6

    .end local v6    # "osw":Ljava/io/OutputStreamWriter;
    .restart local v5    # "osw":Ljava/io/OutputStreamWriter;
    goto :goto_92

    .line 941
    .end local v1    # "file":Ljava/io/File;
    .restart local v2    # "file":Ljava/io/File;
    :catch_a0
    move-exception v9

    move-object v1, v2

    .end local v2    # "file":Ljava/io/File;
    .restart local v1    # "file":Ljava/io/File;
    goto :goto_89

    .end local v5    # "osw":Ljava/io/OutputStreamWriter;
    .restart local v6    # "osw":Ljava/io/OutputStreamWriter;
    :catch_a3
    move-exception v9

    move-object v5, v6

    .end local v6    # "osw":Ljava/io/OutputStreamWriter;
    .restart local v5    # "osw":Ljava/io/OutputStreamWriter;
    goto :goto_89

    .end local v1    # "file":Ljava/io/File;
    .restart local v2    # "file":Ljava/io/File;
    :cond_a6
    move-object v1, v2

    .end local v2    # "file":Ljava/io/File;
    .restart local v1    # "file":Ljava/io/File;
    goto :goto_6b
.end method
