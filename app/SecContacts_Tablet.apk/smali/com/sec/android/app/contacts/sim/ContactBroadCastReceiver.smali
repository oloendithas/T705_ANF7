.class public Lcom/sec/android/app/contacts/sim/ContactBroadCastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ContactBroadCastReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ContactBroadCastReceiver"

.field private static final TAG2:Ljava/lang/String; = "ContactBroadCastReceiver_Sim2"

.field private static bFirstBoot:Z

.field private static bFirstBoot2:Z


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 47
    sput-boolean v0, Lcom/sec/android/app/contacts/sim/ContactBroadCastReceiver;->bFirstBoot:Z

    .line 49
    sput-boolean v0, Lcom/sec/android/app/contacts/sim/ContactBroadCastReceiver;->bFirstBoot2:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/contacts/sim/ContactBroadCastReceiver;->mContext:Landroid/content/Context;

    return-void
.end method

.method private isFirstBootTime()Z
    .locals 6

    .prologue
    .line 263
    const-string v3, "ro.runtime.firstboot"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 264
    .local v0, "firstBootTime":Ljava/lang/String;
    iget-object v3, p0, Lcom/sec/android/app/contacts/sim/ContactBroadCastReceiver;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 265
    .local v1, "prefs":Landroid/content/SharedPreferences;
    const-string v3, "runtime_firstboot_time"

    const-string v4, "0"

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 266
    .local v2, "runtimeBootTime":Ljava/lang/String;
    const-string v3, "ContactBroadCastReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "@@ firstBootTime : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " runtimeBootTime : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 269
    :cond_0
    const/4 v3, 0x1

    .line 272
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private isFirstBootTime2()Z
    .locals 6

    .prologue
    .line 276
    const-string v3, "ro.runtime.firstboot"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 277
    .local v0, "firstBootTime":Ljava/lang/String;
    iget-object v3, p0, Lcom/sec/android/app/contacts/sim/ContactBroadCastReceiver;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 278
    .local v1, "prefs":Landroid/content/SharedPreferences;
    const-string v3, "runtime_firstboot_time2"

    const-string v4, "0"

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 279
    .local v2, "runtimeBootTime":Ljava/lang/String;
    const-string v3, "ContactBroadCastReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "@@ firstBootTime : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " runtimeBootTime : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 282
    :cond_0
    const/4 v3, 0x1

    .line 285
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private isSim1DBInitializeNeeded()Z
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 289
    iget-object v4, p0, Lcom/sec/android/app/contacts/sim/ContactBroadCastReceiver;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 290
    .local v1, "prefs":Landroid/content/SharedPreferences;
    const-string v4, "sim_db_ready"

    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 291
    .local v2, "simDbReady":I
    const-string v4, "ContactBroadCastReceiver_Sim2"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "@@ isSim1DBInitializeNeeded :  bFirstBoot : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-boolean v6, Lcom/sec/android/app/contacts/sim/ContactBroadCastReceiver;->bFirstBoot:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " simDbReady : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    sget-boolean v4, Lcom/sec/android/app/contacts/sim/ContactBroadCastReceiver;->bFirstBoot:Z

    if-eqz v4, :cond_1

    .line 294
    if-eqz v2, :cond_0

    .line 295
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 296
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v4, "sim_db_ready"

    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 297
    const-string v4, "adn_editable"

    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 298
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 300
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    const/4 v3, 0x1

    .line 303
    :cond_1
    return v3
.end method

.method private isSim2DBInitializeNeeded()Z
    .locals 10

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 307
    iget-object v7, p0, Lcom/sec/android/app/contacts/sim/ContactBroadCastReceiver;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 308
    .local v2, "prefs":Landroid/content/SharedPreferences;
    const-string v7, "sim2_db_ready"

    invoke-interface {v2, v7, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 309
    .local v4, "simDbReady":I
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnableDualStandbyContacts()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 310
    const-string v7, "ro.runtime.firstboot"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 311
    .local v1, "firstBootTime":Ljava/lang/String;
    const-string v7, "runtime_firstboot_time2"

    const-string v8, "0"

    invoke-interface {v2, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 312
    .local v3, "runtimeBootTime":Ljava/lang/String;
    const-string v7, "ContactBroadCastReceiver"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "@@ firstBootTime : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " runtimeBootTime : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " sim2DbReady : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 315
    :cond_0
    if-eqz v4, :cond_1

    .line 316
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 317
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v7, "sim2_db_ready"

    invoke-interface {v0, v7, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 318
    const-string v7, "adn2_editable"

    invoke-interface {v0, v7, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 319
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 337
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "firstBootTime":Ljava/lang/String;
    .end local v3    # "runtimeBootTime":Ljava/lang/String;
    :cond_1
    :goto_0
    return v5

    .line 324
    :cond_2
    const-string v7, "ContactBroadCastReceiver_Sim2"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "@@ isSim2DBInitializeNeeded :  bFirstBoot : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-boolean v9, Lcom/sec/android/app/contacts/sim/ContactBroadCastReceiver;->bFirstBoot:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " simDbReady : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    sget-boolean v7, Lcom/sec/android/app/contacts/sim/ContactBroadCastReceiver;->bFirstBoot2:Z

    if-eqz v7, :cond_3

    .line 328
    if-eqz v4, :cond_1

    .line 329
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 330
    .restart local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v7, "sim2_db_ready"

    invoke-interface {v0, v7, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 331
    const-string v7, "adn2_editable"

    invoke-interface {v0, v7, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 332
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_3
    move v5, v6

    .line 337
    goto :goto_0
.end method

.method private isSimDBInitializeNeeded()Z
    .locals 9

    .prologue
    const/4 v5, 0x0

    .line 244
    const-string v6, "ro.runtime.firstboot"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 245
    .local v1, "firstBootTime":Ljava/lang/String;
    iget-object v6, p0, Lcom/sec/android/app/contacts/sim/ContactBroadCastReceiver;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 246
    .local v2, "prefs":Landroid/content/SharedPreferences;
    const-string v6, "runtime_firstboot_time"

    const-string v7, "0"

    invoke-interface {v2, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 247
    .local v3, "runtimeBootTime":Ljava/lang/String;
    const-string v6, "sim_db_ready"

    invoke-interface {v2, v6, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 248
    .local v4, "simDbReady":I
    const-string v6, "ContactBroadCastReceiver"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "@@ firstBootTime : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " runtimeBootTime : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " simDbReady : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 251
    :cond_0
    if-eqz v4, :cond_1

    .line 252
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 253
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v6, "sim_db_ready"

    invoke-interface {v0, v6, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 254
    const-string v6, "adn_editable"

    invoke-interface {v0, v6, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 255
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 257
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_1
    const/4 v5, 0x1

    .line 259
    :cond_2
    return v5
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 55
    move-object/from16 v0, p1

    iput-object v0, p0, Lcom/sec/android/app/contacts/sim/ContactBroadCastReceiver;->mContext:Landroid/content/Context;

    .line 56
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    .line 57
    .local v4, "intentAct":Ljava/lang/String;
    const-string v12, "ContactBroadCastReceiver"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "intentAct = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    iget-object v12, p0, Lcom/sec/android/app/contacts/sim/ContactBroadCastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v12

    const-string v13, "sec_container_1"

    invoke-virtual {v12, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v12

    if-eqz v12, :cond_1

    .line 242
    :cond_0
    :goto_0
    return-void

    .line 64
    :cond_1
    const-string v12, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 65
    iget-object v12, p0, Lcom/sec/android/app/contacts/sim/ContactBroadCastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "airplane_mode_on"

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    if-eqz v12, :cond_2

    const/4 v5, 0x1

    .line 67
    .local v5, "isEnabled":Z
    :goto_1
    const-string v12, "ContactBroadCastReceiver"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "@@ AirPlane mode changed!! Enable ? = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isMultiSimDS()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 76
    if-nez v5, :cond_0

    .line 77
    new-instance v8, Landroid/content/Intent;

    iget-object v12, p0, Lcom/sec/android/app/contacts/sim/ContactBroadCastReceiver;->mContext:Landroid/content/Context;

    const-class v13, Lcom/sec/android/app/contacts/sim/MakeSimDBService;

    invoke-direct {v8, v12, v13}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 78
    .local v8, "serviceIntent":Landroid/content/Intent;
    const-string v12, "op"

    const/16 v13, 0x22b8

    invoke-virtual {v8, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 79
    iget-object v12, p0, Lcom/sec/android/app/contacts/sim/ContactBroadCastReceiver;->mContext:Landroid/content/Context;

    invoke-static {v12}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 80
    .local v6, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 81
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v12, "AIRPLANE_MODE_DB_UPDATED"

    const/4 v13, 0x0

    invoke-interface {v2, v12, v13}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 82
    const-string v12, "airplane_mode_changed"

    const/4 v13, 0x1

    invoke-interface {v2, v12, v13}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 83
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 84
    iget-object v12, p0, Lcom/sec/android/app/contacts/sim/ContactBroadCastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v12, v8}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 86
    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isMultiSimDS()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 87
    new-instance v9, Landroid/content/Intent;

    iget-object v12, p0, Lcom/sec/android/app/contacts/sim/ContactBroadCastReceiver;->mContext:Landroid/content/Context;

    const-class v13, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;

    invoke-direct {v9, v12, v13}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 88
    .local v9, "serviceIntent2":Landroid/content/Intent;
    const-string v12, "op"

    const/16 v13, 0x22b8

    invoke-virtual {v9, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 89
    iget-object v12, p0, Lcom/sec/android/app/contacts/sim/ContactBroadCastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v12, v9}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    .line 65
    .end local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v5    # "isEnabled":Z
    .end local v6    # "prefs":Landroid/content/SharedPreferences;
    .end local v8    # "serviceIntent":Landroid/content/Intent;
    .end local v9    # "serviceIntent2":Landroid/content/Intent;
    :cond_2
    const/4 v5, 0x0

    goto :goto_1

    .line 94
    .restart local v5    # "isEnabled":Z
    :cond_3
    if-nez v5, :cond_0

    .line 95
    new-instance v8, Landroid/content/Intent;

    iget-object v12, p0, Lcom/sec/android/app/contacts/sim/ContactBroadCastReceiver;->mContext:Landroid/content/Context;

    const-class v13, Lcom/sec/android/app/contacts/sim/MakeSimDBService;

    invoke-direct {v8, v12, v13}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 96
    .restart local v8    # "serviceIntent":Landroid/content/Intent;
    const-string v12, "op"

    const/16 v13, 0x22b8

    invoke-virtual {v8, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 97
    iget-object v12, p0, Lcom/sec/android/app/contacts/sim/ContactBroadCastReceiver;->mContext:Landroid/content/Context;

    invoke-static {v12}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 98
    .restart local v6    # "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 99
    .restart local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v12, "AIRPLANE_MODE_DB_UPDATED"

    const/4 v13, 0x0

    invoke-interface {v2, v12, v13}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 100
    const-string v12, "airplane_mode_changed"

    const/4 v13, 0x1

    invoke-interface {v2, v12, v13}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 101
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 102
    iget-object v12, p0, Lcom/sec/android/app/contacts/sim/ContactBroadCastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v12, v8}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 104
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnableDualStandbyContacts()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 105
    new-instance v9, Landroid/content/Intent;

    iget-object v12, p0, Lcom/sec/android/app/contacts/sim/ContactBroadCastReceiver;->mContext:Landroid/content/Context;

    const-class v13, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;

    invoke-direct {v9, v12, v13}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 106
    .restart local v9    # "serviceIntent2":Landroid/content/Intent;
    const-string v12, "op"

    const/16 v13, 0x22b8

    invoke-virtual {v9, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 107
    iget-object v12, p0, Lcom/sec/android/app/contacts/sim/ContactBroadCastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v12, v9}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    .line 114
    .end local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v5    # "isEnabled":Z
    .end local v6    # "prefs":Landroid/content/SharedPreferences;
    .end local v8    # "serviceIntent":Landroid/content/Intent;
    .end local v9    # "serviceIntent2":Landroid/content/Intent;
    :cond_4
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/contacts/util/LoadCscFeatureUtils;->isSimDbSupport()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 116
    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isMultiSimDS()Z

    move-result v12

    if-eqz v12, :cond_c

    .line 117
    const-string v12, "com.samsung.intent.action.SIM_DB_INIT"

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 118
    invoke-direct {p0}, Lcom/sec/android/app/contacts/sim/ContactBroadCastReceiver;->isFirstBootTime()Z

    move-result v12

    sput-boolean v12, Lcom/sec/android/app/contacts/sim/ContactBroadCastReceiver;->bFirstBoot:Z

    .line 123
    :cond_5
    :goto_2
    const-string v12, "com.samsung.intent.action.SIM_DB_INIT"

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    invoke-direct {p0}, Lcom/sec/android/app/contacts/sim/ContactBroadCastReceiver;->isSim1DBInitializeNeeded()Z

    move-result v12

    if-eqz v12, :cond_8

    .line 125
    new-instance v8, Landroid/content/Intent;

    iget-object v12, p0, Lcom/sec/android/app/contacts/sim/ContactBroadCastReceiver;->mContext:Landroid/content/Context;

    const-class v13, Lcom/sec/android/app/contacts/sim/MakeSimDBService;

    invoke-direct {v8, v12, v13}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 126
    .restart local v8    # "serviceIntent":Landroid/content/Intent;
    const-string v12, "op"

    const/16 v13, 0x270f

    invoke-virtual {v8, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 127
    iget-object v12, p0, Lcom/sec/android/app/contacts/sim/ContactBroadCastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v12, v8}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 139
    .end local v8    # "serviceIntent":Landroid/content/Intent;
    :cond_6
    :goto_3
    const-string v12, "com.samsung.intent.action.SIM2_DB_INIT"

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a

    invoke-direct {p0}, Lcom/sec/android/app/contacts/sim/ContactBroadCastReceiver;->isSim2DBInitializeNeeded()Z

    move-result v12

    if-eqz v12, :cond_a

    .line 141
    new-instance v9, Landroid/content/Intent;

    const-class v12, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;

    move-object/from16 v0, p1

    invoke-direct {v9, v0, v12}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 142
    .restart local v9    # "serviceIntent2":Landroid/content/Intent;
    const-string v12, "op"

    const/16 v13, 0x270f

    invoke-virtual {v9, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 143
    iget-object v12, p0, Lcom/sec/android/app/contacts/sim/ContactBroadCastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v12, v9}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    .line 119
    .end local v9    # "serviceIntent2":Landroid/content/Intent;
    :cond_7
    const-string v12, "com.samsung.intent.action.SIM2_DB_INIT"

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 120
    invoke-direct {p0}, Lcom/sec/android/app/contacts/sim/ContactBroadCastReceiver;->isFirstBootTime2()Z

    move-result v12

    sput-boolean v12, Lcom/sec/android/app/contacts/sim/ContactBroadCastReceiver;->bFirstBoot2:Z

    goto :goto_2

    .line 128
    :cond_8
    const-string v12, "com.samsung.intent.action.PB_SYNC"

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 129
    new-instance v8, Landroid/content/Intent;

    iget-object v12, p0, Lcom/sec/android/app/contacts/sim/ContactBroadCastReceiver;->mContext:Landroid/content/Context;

    const-class v13, Lcom/sec/android/app/contacts/sim/MakeSimDBService;

    invoke-direct {v8, v12, v13}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 130
    .restart local v8    # "serviceIntent":Landroid/content/Intent;
    const-string v12, "op"

    const/16 v13, 0x1e61

    invoke-virtual {v8, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 131
    iget-object v12, p0, Lcom/sec/android/app/contacts/sim/ContactBroadCastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v12, v8}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 132
    const/4 v12, 0x1

    sput-boolean v12, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isFirstCheck:Z

    goto :goto_3

    .line 133
    .end local v8    # "serviceIntent":Landroid/content/Intent;
    :cond_9
    const-string v12, "android.intent.action.FDN_MODE_CHANGED"

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 134
    new-instance v8, Landroid/content/Intent;

    iget-object v12, p0, Lcom/sec/android/app/contacts/sim/ContactBroadCastReceiver;->mContext:Landroid/content/Context;

    const-class v13, Lcom/sec/android/app/contacts/sim/MakeSimDBService;

    invoke-direct {v8, v12, v13}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 135
    .restart local v8    # "serviceIntent":Landroid/content/Intent;
    const-string v12, "op"

    const/16 v13, 0x1a0a

    invoke-virtual {v8, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 136
    iget-object v12, p0, Lcom/sec/android/app/contacts/sim/ContactBroadCastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v12, v8}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_3

    .line 144
    .end local v8    # "serviceIntent":Landroid/content/Intent;
    :cond_a
    const-string v12, "com.samsung.intent.action.PB2_SYNC"

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b

    .line 145
    new-instance v8, Landroid/content/Intent;

    iget-object v12, p0, Lcom/sec/android/app/contacts/sim/ContactBroadCastReceiver;->mContext:Landroid/content/Context;

    const-class v13, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;

    invoke-direct {v8, v12, v13}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 146
    .restart local v8    # "serviceIntent":Landroid/content/Intent;
    const-string v12, "op"

    const/16 v13, 0x1e61

    invoke-virtual {v8, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 147
    iget-object v12, p0, Lcom/sec/android/app/contacts/sim/ContactBroadCastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v12, v8}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 148
    const/4 v12, 0x1

    sput-boolean v12, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isFirstCheck2:Z

    goto/16 :goto_0

    .line 149
    .end local v8    # "serviceIntent":Landroid/content/Intent;
    :cond_b
    const-string v12, "android.intent.action.FDN2_MODE_CHANGED"

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 150
    new-instance v8, Landroid/content/Intent;

    iget-object v12, p0, Lcom/sec/android/app/contacts/sim/ContactBroadCastReceiver;->mContext:Landroid/content/Context;

    const-class v13, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;

    invoke-direct {v8, v12, v13}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 151
    .restart local v8    # "serviceIntent":Landroid/content/Intent;
    const-string v12, "op"

    const/16 v13, 0x1a0a

    invoke-virtual {v8, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 152
    iget-object v12, p0, Lcom/sec/android/app/contacts/sim/ContactBroadCastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v12, v8}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    .line 155
    .end local v8    # "serviceIntent":Landroid/content/Intent;
    :cond_c
    const-string v12, "com.samsung.intent.action.SIM_DB_INIT"

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_d

    invoke-direct {p0}, Lcom/sec/android/app/contacts/sim/ContactBroadCastReceiver;->isSimDBInitializeNeeded()Z

    move-result v12

    if-eqz v12, :cond_d

    .line 157
    new-instance v8, Landroid/content/Intent;

    iget-object v12, p0, Lcom/sec/android/app/contacts/sim/ContactBroadCastReceiver;->mContext:Landroid/content/Context;

    const-class v13, Lcom/sec/android/app/contacts/sim/MakeSimDBService;

    invoke-direct {v8, v12, v13}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 158
    .restart local v8    # "serviceIntent":Landroid/content/Intent;
    const-string v12, "op"

    const/16 v13, 0x270f

    invoke-virtual {v8, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 159
    iget-object v12, p0, Lcom/sec/android/app/contacts/sim/ContactBroadCastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v12, v8}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    .line 160
    .end local v8    # "serviceIntent":Landroid/content/Intent;
    :cond_d
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnableDualStandbyContacts()Z

    move-result v12

    if-eqz v12, :cond_e

    const-string v12, "com.samsung.intent.action.SIM2_DB_INIT"

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_e

    invoke-direct {p0}, Lcom/sec/android/app/contacts/sim/ContactBroadCastReceiver;->isSim2DBInitializeNeeded()Z

    move-result v12

    if-eqz v12, :cond_e

    .line 163
    new-instance v8, Landroid/content/Intent;

    iget-object v12, p0, Lcom/sec/android/app/contacts/sim/ContactBroadCastReceiver;->mContext:Landroid/content/Context;

    const-class v13, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;

    invoke-direct {v8, v12, v13}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 164
    .restart local v8    # "serviceIntent":Landroid/content/Intent;
    const-string v12, "op"

    const/16 v13, 0x270f

    invoke-virtual {v8, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 165
    iget-object v12, p0, Lcom/sec/android/app/contacts/sim/ContactBroadCastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v12, v8}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    .line 166
    .end local v8    # "serviceIntent":Landroid/content/Intent;
    :cond_e
    const-string v12, "com.samsung.intent.action.PB_SYNC"

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_f

    .line 167
    new-instance v8, Landroid/content/Intent;

    iget-object v12, p0, Lcom/sec/android/app/contacts/sim/ContactBroadCastReceiver;->mContext:Landroid/content/Context;

    const-class v13, Lcom/sec/android/app/contacts/sim/MakeSimDBService;

    invoke-direct {v8, v12, v13}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 168
    .restart local v8    # "serviceIntent":Landroid/content/Intent;
    const-string v12, "op"

    const/16 v13, 0x1e61

    invoke-virtual {v8, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 169
    iget-object v12, p0, Lcom/sec/android/app/contacts/sim/ContactBroadCastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v12, v8}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 170
    const/4 v12, 0x1

    sput-boolean v12, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isFirstCheck:Z

    goto/16 :goto_0

    .line 172
    .end local v8    # "serviceIntent":Landroid/content/Intent;
    :cond_f
    const-string v12, "com.samsung.intent.action.PB2_SYNC"

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_11

    .line 173
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnableDualStandbyContacts()Z

    move-result v12

    if-eqz v12, :cond_10

    .line 174
    new-instance v8, Landroid/content/Intent;

    iget-object v12, p0, Lcom/sec/android/app/contacts/sim/ContactBroadCastReceiver;->mContext:Landroid/content/Context;

    const-class v13, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;

    invoke-direct {v8, v12, v13}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 175
    .restart local v8    # "serviceIntent":Landroid/content/Intent;
    const-string v12, "op"

    const/16 v13, 0x1e61

    invoke-virtual {v8, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 176
    iget-object v12, p0, Lcom/sec/android/app/contacts/sim/ContactBroadCastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v12, v8}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    .line 178
    .end local v8    # "serviceIntent":Landroid/content/Intent;
    :cond_10
    new-instance v8, Landroid/content/Intent;

    iget-object v12, p0, Lcom/sec/android/app/contacts/sim/ContactBroadCastReceiver;->mContext:Landroid/content/Context;

    const-class v13, Lcom/sec/android/app/contacts/sim/MakeSimDBService;

    invoke-direct {v8, v12, v13}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 179
    .restart local v8    # "serviceIntent":Landroid/content/Intent;
    const-string v12, "op"

    const/16 v13, 0x1e61

    invoke-virtual {v8, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 180
    iget-object v12, p0, Lcom/sec/android/app/contacts/sim/ContactBroadCastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v12, v8}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 181
    const/4 v12, 0x1

    sput-boolean v12, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isFirstCheck:Z

    goto/16 :goto_0

    .line 183
    .end local v8    # "serviceIntent":Landroid/content/Intent;
    :cond_11
    const-string v12, "android.intent.action.FDN_MODE_CHANGED"

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_16

    .line 184
    const/4 v8, 0x0

    .line 185
    .restart local v8    # "serviceIntent":Landroid/content/Intent;
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnableDualStandbyContacts()Z

    move-result v12

    if-eqz v12, :cond_15

    .line 186
    const-string v12, "ICC_TYPE"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 187
    .local v3, "extra":Ljava/lang/String;
    if-eqz v3, :cond_14

    .line 188
    const-string v12, "ContactBroadCastReceiver"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "android.intent.action.FDN_MODE_CHANGED / extra value = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    const-string v12, "CDMA"

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_13

    .line 190
    new-instance v8, Landroid/content/Intent;

    .end local v8    # "serviceIntent":Landroid/content/Intent;
    iget-object v12, p0, Lcom/sec/android/app/contacts/sim/ContactBroadCastReceiver;->mContext:Landroid/content/Context;

    const-class v13, Lcom/sec/android/app/contacts/sim/MakeSimDBService;

    invoke-direct {v8, v12, v13}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 201
    .end local v3    # "extra":Ljava/lang/String;
    .restart local v8    # "serviceIntent":Landroid/content/Intent;
    :cond_12
    :goto_4
    if-eqz v8, :cond_0

    .line 202
    const-string v12, "op"

    const/16 v13, 0x1a0a

    invoke-virtual {v8, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 203
    iget-object v12, p0, Lcom/sec/android/app/contacts/sim/ContactBroadCastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v12, v8}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    .line 191
    .restart local v3    # "extra":Ljava/lang/String;
    :cond_13
    const-string v12, "GSM"

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_12

    .line 192
    new-instance v8, Landroid/content/Intent;

    .end local v8    # "serviceIntent":Landroid/content/Intent;
    iget-object v12, p0, Lcom/sec/android/app/contacts/sim/ContactBroadCastReceiver;->mContext:Landroid/content/Context;

    const-class v13, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;

    invoke-direct {v8, v12, v13}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .restart local v8    # "serviceIntent":Landroid/content/Intent;
    goto :goto_4

    .line 195
    :cond_14
    const-string v12, "ContactBroadCastReceiver"

    const-string v13, "android.intent.action.FDN_MODE_CHANGED / extra value is null !! "

    invoke-static {v12, v13}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 198
    .end local v3    # "extra":Ljava/lang/String;
    :cond_15
    new-instance v8, Landroid/content/Intent;

    .end local v8    # "serviceIntent":Landroid/content/Intent;
    iget-object v12, p0, Lcom/sec/android/app/contacts/sim/ContactBroadCastReceiver;->mContext:Landroid/content/Context;

    const-class v13, Lcom/sec/android/app/contacts/sim/MakeSimDBService;

    invoke-direct {v8, v12, v13}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .restart local v8    # "serviceIntent":Landroid/content/Intent;
    goto :goto_4

    .line 205
    .end local v8    # "serviceIntent":Landroid/content/Intent;
    :cond_16
    const-string v12, "android.bluetooth.sap.intent.action.SAP_STATE_NOTIFY_ACTION"

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_18

    .line 206
    new-instance v8, Landroid/content/Intent;

    iget-object v12, p0, Lcom/sec/android/app/contacts/sim/ContactBroadCastReceiver;->mContext:Landroid/content/Context;

    const-class v13, Lcom/sec/android/app/contacts/sim/MakeSimDBService;

    invoke-direct {v8, v12, v13}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 207
    .restart local v8    # "serviceIntent":Landroid/content/Intent;
    const-string v12, "android.bluetooth.sap.intent.SAP_STATE"

    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 208
    .local v7, "sapConnected":I
    const/4 v12, 0x2

    if-ne v7, v12, :cond_17

    .line 209
    const-string v12, "op"

    const/16 v13, 0x15b3

    invoke-virtual {v8, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 210
    const-string v12, "service_connected"

    const/4 v13, 0x1

    invoke-virtual {v8, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 211
    iget-object v12, p0, Lcom/sec/android/app/contacts/sim/ContactBroadCastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v12, v8}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    .line 212
    :cond_17
    if-nez v7, :cond_0

    .line 213
    const-string v12, "op"

    const/16 v13, 0x15b3

    invoke-virtual {v8, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 214
    const-string v12, "service_connected"

    const/4 v13, 0x0

    invoke-virtual {v8, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 215
    iget-object v12, p0, Lcom/sec/android/app/contacts/sim/ContactBroadCastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v12, v8}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    .line 217
    .end local v7    # "sapConnected":I
    .end local v8    # "serviceIntent":Landroid/content/Intent;
    :cond_18
    const-string v12, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 218
    const-string v12, "ContactBroadCastReceiver"

    const-string v13, "Receive ACTION_SIM_STATE_CHANGED intent"

    invoke-static {v12, v13}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    iget-object v12, p0, Lcom/sec/android/app/contacts/sim/ContactBroadCastReceiver;->mContext:Landroid/content/Context;

    invoke-static {v12}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 221
    .restart local v6    # "prefs":Landroid/content/SharedPreferences;
    const-string v12, "airplane_mode_changed"

    const/4 v13, 0x0

    invoke-interface {v6, v12, v13}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 223
    .local v1, "airplaneModeChanged":I
    const/4 v12, 0x1

    if-ne v1, v12, :cond_0

    .line 224
    const-string v12, "ContactBroadCastReceiver"

    const-string v13, "Airplane mode was turned on"

    invoke-static {v12, v13}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v11

    .line 227
    .local v11, "telMan":Landroid/telephony/TelephonyManager;
    invoke-virtual {v11}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v10

    .line 230
    .local v10, "simState":I
    const/4 v12, 0x5

    if-ne v10, v12, :cond_0

    .line 231
    const-string v12, "ContactBroadCastReceiver"

    const-string v13, "SIM state is ready"

    invoke-static {v12, v13}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    new-instance v8, Landroid/content/Intent;

    iget-object v12, p0, Lcom/sec/android/app/contacts/sim/ContactBroadCastReceiver;->mContext:Landroid/content/Context;

    const-class v13, Lcom/sec/android/app/contacts/sim/MakeSimDBService;

    invoke-direct {v8, v12, v13}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 234
    .restart local v8    # "serviceIntent":Landroid/content/Intent;
    const-string v12, "op"

    const/16 v13, 0x1e61

    invoke-virtual {v8, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 235
    iget-object v12, p0, Lcom/sec/android/app/contacts/sim/ContactBroadCastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v12, v8}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 236
    const/4 v12, 0x1

    sput-boolean v12, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isFirstCheck:Z

    goto/16 :goto_0
.end method
