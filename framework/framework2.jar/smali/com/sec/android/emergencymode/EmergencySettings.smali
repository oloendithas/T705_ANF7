.class public Lcom/sec/android/emergencymode/EmergencySettings;
.super Ljava/lang/Object;
.source "EmergencySettings.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "EmergencySettings"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static get(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    .registers 11
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "pref"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 47
    if-eqz p0, :cond_5

    if-nez p1, :cond_6

    .line 66
    :cond_5
    :goto_5
    return-object v8

    .line 50
    :cond_6
    const/4 v8, 0x0

    .line 51
    .local v8, "ret":Ljava/lang/String;
    const/4 v6, 0x0

    .line 53
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "pref=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 54
    .local v3, "selection":Ljava/lang/String;
    sget-object v1, Lcom/sec/android/emergencymode/EmergencyConstants;->URI_PREFSETTINGS:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 55
    if-eqz v6, :cond_45

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_45

    .line 56
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 57
    const-string/jumbo v0, "value"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 58
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_45} :catch_4b
    .catchall {:try_start_8 .. :try_end_45} :catchall_67

    .line 63
    :cond_45
    if-eqz v6, :cond_5

    .line 64
    .end local v3    # "selection":Ljava/lang/String;
    :goto_47
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_5

    .line 60
    :catch_4b
    move-exception v7

    .line 61
    .local v7, "e":Ljava/lang/Exception;
    :try_start_4c
    const-string v0, "EmergencySettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_64
    .catchall {:try_start_4c .. :try_end_64} :catchall_67

    .line 63
    if-eqz v6, :cond_5

    goto :goto_47

    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_67
    move-exception v0

    if-eqz v6, :cond_6d

    .line 64
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 63
    :cond_6d
    throw v0
.end method

.method public static getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z
    .registers 4
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "pref"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .prologue
    .line 80
    invoke-static {p0, p1}, Lcom/sec/android/emergencymode/EmergencySettings;->get(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, "ret":Ljava/lang/String;
    if-nez v0, :cond_7

    .line 84
    .end local p2    # "defaultValue":Z
    :goto_6
    return p2

    .restart local p2    # "defaultValue":Z
    :cond_7
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p2

    goto :goto_6
.end method

.method public static getDouble(Landroid/content/ContentResolver;Ljava/lang/String;D)D
    .registers 9
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "pref"    # Ljava/lang/String;
    .param p2, "defaultValue"    # D

    .prologue
    .line 106
    invoke-static {p0, p1}, Lcom/sec/android/emergencymode/EmergencySettings;->get(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 108
    .local v1, "ret":Ljava/lang/String;
    :try_start_4
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_7} :catch_9

    move-result-wide p2

    .line 111
    .end local p2    # "defaultValue":D
    :goto_8
    return-wide p2

    .line 109
    .restart local p2    # "defaultValue":D
    :catch_9
    move-exception v0

    .line 110
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "EmergencySettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8
.end method

.method public static getEmergencyNumber(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    .registers 12
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 124
    if-eqz p0, :cond_5

    if-nez p1, :cond_6

    .line 149
    :cond_5
    :goto_5
    return-object v9

    .line 127
    :cond_6
    const/4 v9, 0x0

    .line 128
    .local v9, "ret":Ljava/lang/String;
    const/4 v6, 0x0

    .line 130
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_8
    const-string v0, "gsm.operator.numeric"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 131
    .local v8, "mcc":Ljava/lang/String;
    const-string v0, "EmergencySettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getEmergencyNumber requested Country : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mcc=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 134
    .local v3, "selection":Ljava/lang/String;
    sget-object v1, Lcom/sec/android/emergencymode/EmergencyConstants;->URI_ECCLIST:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 135
    if-eqz v6, :cond_67

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_67

    .line 136
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 137
    invoke-interface {v6, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/emergencymode/EmergencySettings;->makeEmergencyNumber(Ljava/lang/String;)Ljava/lang/String;
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_66} :catch_78
    .catchall {:try_start_8 .. :try_end_66} :catchall_a2

    move-result-object v9

    .line 142
    :cond_67
    if-eqz v6, :cond_6c

    .line 143
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 144
    :cond_6c
    if-nez v9, :cond_5

    .line 145
    const-string v0, "EmergencySettings"

    const-string v1, "getEmergencyNumber not found emergency number!"

    invoke-static {v0, v1}, Lcom/sec/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    const-string v9, "911"

    .end local v3    # "selection":Ljava/lang/String;
    .end local v8    # "mcc":Ljava/lang/String;
    :goto_77
    goto :goto_5

    .line 139
    :catch_78
    move-exception v7

    .line 140
    .local v7, "e":Ljava/lang/Exception;
    :try_start_79
    const-string v0, "EmergencySettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_91
    .catchall {:try_start_79 .. :try_end_91} :catchall_a2

    .line 142
    if-eqz v6, :cond_96

    .line 143
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 144
    :cond_96
    if-nez v9, :cond_5

    .line 145
    const-string v0, "EmergencySettings"

    const-string v1, "getEmergencyNumber not found emergency number!"

    invoke-static {v0, v1}, Lcom/sec/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    const-string v9, "911"

    goto :goto_77

    .line 142
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_a2
    move-exception v0

    if-eqz v6, :cond_a8

    .line 143
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 144
    :cond_a8
    if-nez v9, :cond_b3

    .line 145
    const-string v1, "EmergencySettings"

    const-string v2, "getEmergencyNumber not found emergency number!"

    invoke-static {v1, v2}, Lcom/sec/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    const-string v9, "911"

    .line 142
    :cond_b3
    throw v0
.end method

.method public static getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    .registers 8
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "pref"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .prologue
    .line 70
    invoke-static {p0, p1}, Lcom/sec/android/emergencymode/EmergencySettings;->get(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 72
    .local v1, "ret":Ljava/lang/String;
    :try_start_4
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_7} :catch_9

    move-result p2

    .line 75
    .end local p2    # "defaultValue":I
    :goto_8
    return p2

    .line 73
    .restart local p2    # "defaultValue":I
    :catch_9
    move-exception v0

    .line 74
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "EmergencySettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8
.end method

.method public static getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J
    .registers 9
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "pref"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J

    .prologue
    .line 96
    invoke-static {p0, p1}, Lcom/sec/android/emergencymode/EmergencySettings;->get(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 98
    .local v1, "ret":Ljava/lang/String;
    :try_start_4
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_7} :catch_9

    move-result-wide p2

    .line 101
    .end local p2    # "defaultValue":J
    :goto_8
    return-wide p2

    .line 99
    .restart local p2    # "defaultValue":J
    :catch_9
    move-exception v0

    .line 100
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "EmergencySettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8
.end method

.method public static getString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "pref"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 88
    invoke-static {p0, p1}, Lcom/sec/android/emergencymode/EmergencySettings;->get(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, "ret":Ljava/lang/String;
    if-nez v0, :cond_7

    .line 92
    .end local p2    # "defaultValue":Ljava/lang/String;
    :goto_6
    return-object p2

    .restart local p2    # "defaultValue":Ljava/lang/String;
    :cond_7
    move-object p2, v0

    goto :goto_6
.end method

.method private static makeEmergencyNumber(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 153
    const-string/jumbo v2, "ro.multisim.simslotcount"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 154
    .local v0, "simCount":I
    if-le v0, v3, :cond_18

    .line 155
    invoke-static {p0}, Landroid/telephony/MultiSimPhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 156
    const-string v2, "EmergencySettings"

    const-string v3, "Multi Sim Emergency number"

    invoke-static {v2, v3}, Lcom/sec/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    .end local p0    # "number":Ljava/lang/String;
    :goto_17
    return-object p0

    .line 160
    .restart local p0    # "number":Ljava/lang/String;
    :cond_18
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 161
    const-string v2, "EmergencySettings"

    const-string v3, "Single Sim Emergency number"

    invoke-static {v2, v3}, Lcom/sec/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_17

    .line 166
    :cond_26
    const-string v2, "gsm.sim.state"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 167
    .local v1, "simState":Ljava/lang/String;
    if-eqz v1, :cond_3e

    const-string v2, "READY"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 168
    const-string v2, "EmergencySettings"

    const-string v3, "SIM Ready, not emergency number."

    invoke-static {v2, v3}, Lcom/sec/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_17

    .line 171
    :cond_3e
    const-string v2, "EmergencySettings"

    const-string v3, "SIM not Ready, default emergency number."

    invoke-static {v2, v3}, Lcom/sec/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    const/4 p0, 0x0

    goto :goto_17
.end method

.method public static put(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 8
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "pref"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 34
    if-nez p0, :cond_3

    .line 44
    :goto_2
    return-void

    .line 37
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "pref=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 38
    .local v1, "selection":Ljava/lang/String;
    sget-object v3, Lcom/sec/android/emergencymode/EmergencyConstants;->URI_PREFSETTINGS:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v1, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 40
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 41
    .local v2, "values":Landroid/content/ContentValues;
    const-string/jumbo v3, "pref"

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    const-string/jumbo v3, "value"

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    sget-object v3, Lcom/sec/android/emergencymode/EmergencyConstants;->URI_PREFSETTINGS:Landroid/net/Uri;

    invoke-virtual {p0, v3, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 44
    .local v0, "resultUri":Landroid/net/Uri;
    goto :goto_2
.end method
