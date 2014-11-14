.class public final Landroid/os/FactoryTest;
.super Ljava/lang/Object;
.source "FactoryTest.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FactoryTest"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isAutomaticTestMode(Landroid/content/Context;)Z
    .registers 5
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 108
    if-eqz p0, :cond_18

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "SHOULD_SHUT_DOWN"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_18

    .line 109
    const-string v1, "FactoryTest"

    const-string v2, "The AutomaticTest mode was enabled."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :goto_17
    return v0

    :cond_18
    move v0, v1

    goto :goto_17
.end method

.method public static isFactoryBinary()Z
    .registers 3

    .prologue
    .line 145
    const-string v0, "factory"

    const-string/jumbo v1, "ro.factory.factory_binary"

    const-string v2, "Unknown"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isFactoryMode()Z
    .registers 7

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 118
    const/4 v1, 0x0

    .line 121
    .local v1, "mFactoryMode":Ljava/lang/String;
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v4

    if-ne v4, v2, :cond_a

    .line 138
    :goto_9
    return v2

    .line 127
    :cond_a
    :try_start_a
    new-instance v4, Ljava/io/File;

    const-string v5, "/efs/FactoryApp/factorymode"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v5, 0x20

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_17} :catch_28

    move-result-object v1

    .line 133
    const-string v4, "OFF"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_32

    .line 134
    const-string v3, "FactoryTest"

    const-string v4, "Factory mode"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 128
    :catch_28
    move-exception v0

    .line 129
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "FactoryTest"

    const-string v4, "cannot open file : /efs/FactoryApp/factorymode"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 130
    goto :goto_9

    .line 137
    .end local v0    # "e":Ljava/io/IOException;
    :cond_32
    const-string v2, "FactoryTest"

    const-string v4, "User mode"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 138
    goto :goto_9
.end method

.method public static isFactoryMode(Landroid/content/Context;Landroid/telephony/TelephonyManager;)Z
    .registers 10
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "mTelephonyManager"    # Landroid/telephony/TelephonyManager;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 61
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v5

    if-ne v5, v3, :cond_10

    .line 62
    const-string v4, "FactoryTest"

    const-string v5, "Binary type is Factory by Case #0"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :goto_f
    return v3

    .line 67
    :cond_10
    if-eqz p0, :cond_26

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "SHOULD_SHUT_DOWN"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v3, :cond_26

    .line 68
    const-string v4, "FactoryTest"

    const-string v5, "Factory mode is enabled by Case #1"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    .line 73
    :cond_26
    if-eqz p1, :cond_3c

    const-string v5, "999999999999999"

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3c

    .line 74
    const-string v4, "FactoryTest"

    const-string v5, "Factory mode is enabled by Case #2"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    .line 79
    :cond_3c
    const/4 v2, 0x0

    .line 81
    .local v2, "imeiBlocked":Ljava/lang/String;
    :try_start_3d
    new-instance v5, Ljava/io/File;

    const-string v6, "/efs/FactoryApp/factorymode"

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v6, 0x20

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;
    :try_end_4a
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_4a} :catch_65

    move-result-object v2

    .line 94
    :goto_4b
    if-eqz v2, :cond_89

    const-string v5, "ON"

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_89

    .line 95
    const-string v3, "FactoryTest"

    const-string v5, "Not factory mode"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    const-string v3, "FactoryTest"

    const-string v5, "Not factory mode. isFactoryMode() returend false"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 102
    goto :goto_f

    .line 82
    :catch_65
    move-exception v0

    .line 83
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "OFF"

    .line 84
    const-string v5, "FactoryTest"

    const-string v6, "cannot open file : /efs/FactoryApp/factorymode"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    :try_start_6f
    new-instance v5, Ljava/io/File;

    const-string v6, "/efs/imei/keystr"

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v6, 0x20

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;
    :try_end_7c
    .catch Ljava/io/IOException; {:try_start_6f .. :try_end_7c} :catch_7e

    move-result-object v2

    goto :goto_4b

    .line 88
    :catch_7e
    move-exception v1

    .line 89
    .local v1, "ex":Ljava/io/IOException;
    const-string v2, "OFF"

    .line 90
    const-string v5, "FactoryTest"

    const-string v6, "cannot open file : /efs/imei/keystr"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4b

    .line 97
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "ex":Ljava/io/IOException;
    :cond_89
    const-string v4, "FactoryTest"

    const-string v5, "Factory mode is enabled by Case #3 or #4"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f
.end method

.method public static isFactoryPBAPhase()Z
    .registers 2

    .prologue
    .line 52
    const-string/jumbo v0, "ril.factory_mode"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "PBA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isLongPressOnPowerOffEnabled()Z
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 45
    const-string v1, "factory.long_press_power_off"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_a

    const/4 v0, 0x1

    :cond_a
    return v0
.end method

.method public static isRunningFactoryApp()Z
    .registers 5

    .prologue
    .line 162
    const-string/jumbo v2, "sys.factory.runningFactoryApp"

    const-string v3, "false"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 163
    .local v1, "state":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 164
    .local v0, "result":Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 165
    const-string v2, "FactoryTest"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isRunningFactoryApp="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :cond_2f
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    return v2
.end method

.method public static needBlockingPowerKey()Z
    .registers 5

    .prologue
    .line 185
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v2

    if-nez v2, :cond_8

    .line 186
    const/4 v2, 0x0

    .line 193
    .local v0, "result":Ljava/lang/Boolean;
    .local v1, "state":Ljava/lang/String;
    :goto_7
    return v2

    .line 188
    .end local v0    # "result":Ljava/lang/Boolean;
    .end local v1    # "state":Ljava/lang/String;
    :cond_8
    const-string/jumbo v2, "sys.factory.blockingPowerKey"

    const-string v3, "false"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 189
    .restart local v1    # "state":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 190
    .restart local v0    # "result":Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_38

    .line 191
    const-string v2, "FactoryTest"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "needBlockingPowerKey="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    :cond_38
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto :goto_7
.end method

.method public static setBlockingPowerKey(Landroid/content/Context;Z)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "status"    # Z

    .prologue
    .line 197
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v0

    if-nez v0, :cond_8

    .line 198
    const/4 v0, 0x0

    .line 205
    :goto_7
    return v0

    .line 200
    :cond_8
    const-string v0, "com.sec.factory.permission.KEYSTRING"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_18

    .line 201
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires com.sec.factory.permission.KEYSTRING permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 203
    :cond_18
    const-string/jumbo v0, "sys.factory.blockingPowerKey"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    const-string v0, "FactoryTest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setBlockingPowerKey="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/FactoryTest;->needBlockingPowerKey()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public static setRunningFactoryApp(Landroid/content/Context;Z)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "status"    # Z

    .prologue
    .line 171
    const-string v0, "com.sec.factory.permission.KEYSTRING"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_10

    .line 172
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires com.sec.factory.permission.KEYSTRING permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 174
    :cond_10
    const-string/jumbo v0, "sys.factory.runningFactoryApp"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    const-string v0, "FactoryTest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setRunningFactoryApp="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/FactoryTest;->isRunningFactoryApp()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public getBuildType()Ljava/lang/String;
    .registers 5

    .prologue
    .line 151
    const-string/jumbo v1, "ro.build.type"

    const-string v2, "Unknown"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 152
    .local v0, "type":Ljava/lang/String;
    const-string v1, "FactoryTest"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getBuildType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    return-object v0
.end method
