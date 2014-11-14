.class public Lcom/samsung/android/vr/VRManager;
.super Ljava/lang/Object;
.source "VRManager.java"


# static fields
.field public static final INTENT_ACTION_HMT_CONNECTED:Ljava/lang/String; = "com.samsung.intent.action.HMT_CONNECTED"

.field public static final INTENT_ACTION_HMT_DISCONNECTED:Ljava/lang/String; = "com.samsung.intent.action.HMT_DISCONNECTED"

.field public static final METADATA_VR_ACTIVITY:Ljava/lang/String; = "com.samsung.android.vr.activity"

.field public static final METADATA_VR_APPLICATION_MODE:Ljava/lang/String; = "com.samsung.android.vr.application.mode"

.field public static final METADATA_VR_MODE_DUAL:Ljava/lang/String; = "dual"

.field public static final METADATA_VR_MODE_VR_ONLY:Ljava/lang/String; = "vr_only"

.field public static final PROPERTY_KEY_VRMODE:Ljava/lang/String; = "sys.hmt.connected"

.field private static final TAG:Ljava/lang/String; = "VRManager"

.field public static final VRAPP_TYPE_DUAL:I = 0x2

.field public static final VRAPP_TYPE_NOT_VRAPP:I = 0x0

.field public static final VRAPP_TYPE_VRONLY:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getVRApplicationList(Landroid/content/Context;)Ljava/util/List;
    .registers 10
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 119
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 120
    .local v5, "pm":Landroid/content/pm/PackageManager;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 123
    .local v6, "vrAppNameList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v5, :cond_54

    .line 124
    const/16 v7, 0x80

    :try_start_d
    invoke-virtual {v5, v7}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v4

    .line 125
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_15
    :goto_15
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_54

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    .line 126
    .local v2, "entry":Landroid/content/pm/PackageInfo;
    iget-object v7, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v7, :cond_15

    iget-object v7, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    if-eqz v7, :cond_15

    .line 127
    iget-object v7, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    const-string v8, "com.samsung.android.vr.application.mode"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 128
    .local v0, "appMetaDataStr":Ljava/lang/String;
    const-string/jumbo v7, "vr_only"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_46

    const-string v7, "dual"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_15

    .line 129
    :cond_46
    iget-object v7, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_4b} :catch_4c

    goto :goto_15

    .line 134
    .end local v0    # "appMetaDataStr":Ljava/lang/String;
    .end local v2    # "entry":Landroid/content/pm/PackageInfo;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    :catch_4c
    move-exception v1

    .line 135
    .local v1, "e":Ljava/lang/Exception;
    const-string v7, "VRManager"

    const-string v8, "Exception in getVRApplicationList()"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 137
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_54
    return-object v6
.end method

.method public static getVRApplicationType(Landroid/content/Context;Ljava/lang/String;)I
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageStr"    # Ljava/lang/String;

    .prologue
    .line 148
    if-nez p0, :cond_b

    .line 149
    const-string v4, "VRManager"

    const-string v5, "isVRApplication: context is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    :cond_9
    :goto_9
    const/4 v4, 0x0

    :goto_a
    return v4

    .line 150
    :cond_b
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 151
    const-string v4, "VRManager"

    const-string v5, "isVRApplication: packageStr is null or 0-length."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 154
    :cond_19
    :try_start_19
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/16 v5, 0x80

    invoke-virtual {v4, p1, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 156
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v2, v0, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    .line 157
    .local v2, "applicationMetaData":Landroid/os/Bundle;
    if-eqz v2, :cond_9

    .line 158
    const-string v4, "com.samsung.android.vr.application.mode"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 159
    .local v1, "appMetaDataStr":Ljava/lang/String;
    const-string/jumbo v4, "vr_only"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_38

    .line 160
    const/4 v4, 0x1

    goto :goto_a

    .line 161
    :cond_38
    const-string v4, "dual"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_3d} :catch_42

    move-result v4

    if-eqz v4, :cond_9

    .line 162
    const/4 v4, 0x2

    goto :goto_a

    .line 165
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "appMetaDataStr":Ljava/lang/String;
    .end local v2    # "applicationMetaData":Landroid/os/Bundle;
    :catch_42
    move-exception v3

    .line 166
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "VRManager"

    const-string v5, "Exception in isVRApplication()"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public static isVRActivity(Landroid/content/Context;Landroid/content/ComponentName;)Z
    .registers 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .prologue
    const/4 v6, 0x1

    .line 87
    if-nez p0, :cond_c

    .line 88
    const-string v6, "VRManager"

    const-string v7, "isVRActivity: context is null"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :cond_a
    :goto_a
    const/4 v6, 0x0

    :cond_b
    :goto_b
    return v6

    .line 89
    :cond_c
    if-nez p1, :cond_16

    .line 90
    const-string v6, "VRManager"

    const-string v7, "isVRActivity: componentName is null."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 93
    :cond_16
    :try_start_16
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const/16 v8, 0x80

    invoke-virtual {v7, p1, v8}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 95
    .local v0, "activityInfo":Landroid/content/pm/ActivityInfo;
    iget-object v2, v0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 96
    .local v2, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v4, v2, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    .line 98
    .local v4, "applicationMetaData":Landroid/os/Bundle;
    if-eqz v4, :cond_a

    .line 99
    const-string v7, "com.samsung.android.vr.application.mode"

    invoke-virtual {v4, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 100
    .local v3, "appMetaDataStr":Ljava/lang/String;
    const-string/jumbo v7, "vr_only"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_b

    .line 102
    const-string v7, "dual"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4a

    .line 103
    iget-object v1, v0, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    .line 104
    .local v1, "activityMetaData":Landroid/os/Bundle;
    if-eqz v1, :cond_a

    const-string v7, "com.samsung.android.vr.activity"

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a

    goto :goto_b

    .line 108
    .end local v1    # "activityMetaData":Landroid/os/Bundle;
    :cond_4a
    const-string v6, "VRManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isVRActivity: There is no meta-data about VR Mode in the App this "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " is a part of."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_6c} :catch_6d

    goto :goto_a

    .line 111
    .end local v0    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v2    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "appMetaDataStr":Ljava/lang/String;
    .end local v4    # "applicationMetaData":Landroid/os/Bundle;
    :catch_6d
    move-exception v5

    .line 112
    .local v5, "e":Ljava/lang/Exception;
    const-string v6, "VRManager"

    const-string v7, "Exception in isVRActivity()"

    invoke-static {v6, v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a
.end method

.method public static isVRApplication(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageStr"    # Ljava/lang/String;

    .prologue
    .line 64
    if-nez p0, :cond_b

    .line 65
    const-string v4, "VRManager"

    const-string v5, "isVRApplication: context is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    :cond_9
    :goto_9
    const/4 v4, 0x0

    :goto_a
    return v4

    .line 66
    :cond_b
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 67
    const-string v4, "VRManager"

    const-string v5, "isVRApplication: packageStr is null or 0-length."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 70
    :cond_19
    :try_start_19
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/16 v5, 0x80

    invoke-virtual {v4, p1, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 72
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v2, v0, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    .line 73
    .local v2, "applicationMetaData":Landroid/os/Bundle;
    if-eqz v2, :cond_9

    .line 74
    const-string v4, "com.samsung.android.vr.application.mode"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 75
    .local v1, "appMetaDataStr":Ljava/lang/String;
    const-string/jumbo v4, "vr_only"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3e

    const-string v4, "dual"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_3b} :catch_40

    move-result v4

    if-eqz v4, :cond_9

    .line 76
    :cond_3e
    const/4 v4, 0x1

    goto :goto_a

    .line 79
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "appMetaDataStr":Ljava/lang/String;
    .end local v2    # "applicationMetaData":Landroid/os/Bundle;
    :catch_40
    move-exception v3

    .line 80
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "VRManager"

    const-string v5, "Exception in isVRApplication()"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public static isVRMode()Z
    .registers 2

    .prologue
    .line 60
    const-string/jumbo v0, "sys.hmt.connected"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
