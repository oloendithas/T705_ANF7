.class public Lcom/diotek/diodict/service/DioDictService;
.super Ljava/lang/Object;
.source "DioDictService.java"


# static fields
.field private static final INTENT_IME_ACTION_LANG:Ljava/lang/String; = "com.diotek.diodict.lang"

.field private static final INTENT_IME_ACTION_TERM:Ljava/lang/String; = "com.diotek.diodict.term"

.field private static final INTENT_IME_CLASSIFIER:Ljava/lang/String; = "lang_str"

.field public static final INTENT_SERVICE_MODE_NAME:Ljava/lang/String; = "service_mode"

.field public static final INTENT_SERVICE_MODE_VALUE_CHANGEDICTYPE:I = 0x3e9

.field public static final LANG_TO_CZE:I = 0x2

.field public static final LANG_TO_DEU:I = 0x3

.field public static final LANG_TO_ENG:I = 0x1

.field public static final LANG_TO_ESP:I = 0x4

.field public static final LANG_TO_FRA:I = 0x5

.field public static final LANG_TO_ITA:I = 0x6

.field public static final LANG_TO_KOR:I = 0x0

.field public static final LANG_TO_NLD:I = 0x7

.field public static final LANG_TO_POL:I = 0x8

.field public static final LANG_TO_PRT:I = 0x9

.field public static final LANG_TO_TUR:I = 0xa

.field public static final PACKAGE_PHONE:Ljava/lang/String; = "com.sec.android.EDictionary"


# instance fields
.field private final DEBUG:Z

.field private final ERROR:Z

.field private final INFO:Z

.field private final TAG:Ljava/lang/String;

.field private mConnection:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field protected mInputManager:Lcom/diotek/ime/framework/common/InputManager;

.field private mIsSwiftKeyMode:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRepository:Lcom/diotek/ime/framework/repository/Repository;

.field mService:Lcom/diotek/diodict/service/IServiceKeyDiodict;

.field private mServiceEnabled:Z

.field private mServicePackage:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-boolean v1, p0, Lcom/diotek/diodict/service/DioDictService;->DEBUG:Z

    .line 22
    iput-boolean v1, p0, Lcom/diotek/diodict/service/DioDictService;->INFO:Z

    .line 23
    iput-boolean v1, p0, Lcom/diotek/diodict/service/DioDictService;->ERROR:Z

    .line 24
    const-string v0, "DIOTEK"

    iput-object v0, p0, Lcom/diotek/diodict/service/DioDictService;->TAG:Ljava/lang/String;

    .line 45
    const-string v0, "com.sec.android.EDictionary"

    iput-object v0, p0, Lcom/diotek/diodict/service/DioDictService;->mServicePackage:Ljava/lang/String;

    .line 47
    iput-object v2, p0, Lcom/diotek/diodict/service/DioDictService;->mContext:Landroid/content/Context;

    .line 48
    iput-object v2, p0, Lcom/diotek/diodict/service/DioDictService;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/diotek/diodict/service/DioDictService;->mServiceEnabled:Z

    .line 51
    iput-object v2, p0, Lcom/diotek/diodict/service/DioDictService;->mService:Lcom/diotek/diodict/service/IServiceKeyDiodict;

    .line 53
    iput-object v2, p0, Lcom/diotek/diodict/service/DioDictService;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    .line 54
    iput-boolean v1, p0, Lcom/diotek/diodict/service/DioDictService;->mIsSwiftKeyMode:Z

    .line 56
    new-instance v0, Lcom/diotek/diodict/service/DioDictService$1;

    invoke-direct {v0, p0}, Lcom/diotek/diodict/service/DioDictService$1;-><init>(Lcom/diotek/diodict/service/DioDictService;)V

    iput-object v0, p0, Lcom/diotek/diodict/service/DioDictService;->mConnection:Landroid/content/ServiceConnection;

    .line 73
    new-instance v0, Lcom/diotek/diodict/service/DioDictService$2;

    invoke-direct {v0, p0}, Lcom/diotek/diodict/service/DioDictService$2;-><init>(Lcom/diotek/diodict/service/DioDictService;)V

    iput-object v0, p0, Lcom/diotek/diodict/service/DioDictService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 128
    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/diodict/service/DioDictService;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    .line 129
    iget-object v0, p0, Lcom/diotek/diodict/service/DioDictService;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/diodict/service/DioDictService;->mContext:Landroid/content/Context;

    .line 131
    iget-object v0, p0, Lcom/diotek/diodict/service/DioDictService;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->getRepository()Lcom/diotek/ime/framework/repository/Repository;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/diodict/service/DioDictService;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    .line 132
    iget-object v0, p0, Lcom/diotek/diodict/service/DioDictService;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->isSwiftKeyMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/diotek/diodict/service/DioDictService;->mIsSwiftKeyMode:Z

    .line 133
    return-void
.end method


# virtual methods
.method public IsServiceEnabled()Z
    .locals 1

    .prologue
    .line 166
    iget-boolean v0, p0, Lcom/diotek/diodict/service/DioDictService;->mServiceEnabled:Z

    return v0
.end method

.method public bindService()Z
    .locals 4

    .prologue
    .line 136
    iget-object v1, p0, Lcom/diotek/diodict/service/DioDictService;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 137
    const/4 v1, 0x0

    .line 142
    :goto_0
    return v1

    .line 139
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 140
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/diotek/diodict/service/DioDictService;->mServicePackage:Ljava/lang/String;

    const-string v2, "com.diotek.diodict.service.ServiceKeyDiodict"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 141
    const-string v1, "service_mode"

    const/16 v2, 0x3e9

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 142
    iget-object v1, p0, Lcom/diotek/diodict/service/DioDictService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/diotek/diodict/service/DioDictService;->mConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    goto :goto_0
.end method

.method public changeLang(I)Z
    .locals 4
    .param p1, "language"    # I

    .prologue
    const/4 v2, 0x0

    .line 173
    iget-object v3, p0, Lcom/diotek/diodict/service/DioDictService;->mService:Lcom/diotek/diodict/service/IServiceKeyDiodict;

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/diotek/diodict/service/DioDictService;->mServiceEnabled:Z

    if-nez v3, :cond_1

    .line 231
    :cond_0
    :goto_0
    return v2

    .line 177
    :cond_1
    const/4 v1, -0x1

    .line 178
    .local v1, "lang":I
    sparse-switch p1, :sswitch_data_0

    .line 222
    const/4 v1, 0x0

    .line 226
    :goto_1
    :try_start_0
    iget-object v3, p0, Lcom/diotek/diodict/service/DioDictService;->mService:Lcom/diotek/diodict/service/IServiceKeyDiodict;

    invoke-interface {v3, v1}, Lcom/diotek/diodict/service/IServiceKeyDiodict;->changeLang(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    const/4 v2, 0x1

    goto :goto_0

    .line 180
    :sswitch_0
    const/4 v1, 0x0

    .line 181
    goto :goto_1

    .line 183
    :sswitch_1
    const/4 v1, 0x1

    .line 184
    goto :goto_1

    .line 186
    :sswitch_2
    const/4 v1, 0x1

    .line 187
    goto :goto_1

    .line 189
    :sswitch_3
    const/4 v1, 0x2

    .line 190
    goto :goto_1

    .line 192
    :sswitch_4
    const/4 v1, 0x3

    .line 193
    goto :goto_1

    .line 197
    :sswitch_5
    const/4 v1, 0x4

    .line 198
    goto :goto_1

    .line 202
    :sswitch_6
    const/4 v1, 0x5

    .line 203
    goto :goto_1

    .line 205
    :sswitch_7
    const/4 v1, 0x6

    .line 206
    goto :goto_1

    .line 208
    :sswitch_8
    const/4 v1, 0x7

    .line 209
    goto :goto_1

    .line 211
    :sswitch_9
    const/16 v1, 0x8

    .line 212
    goto :goto_1

    .line 216
    :sswitch_a
    const/16 v1, 0x9

    .line 217
    goto :goto_1

    .line 219
    :sswitch_b
    const/16 v1, 0xa

    .line 220
    goto :goto_1

    .line 227
    :catch_0
    move-exception v0

    .line 228
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 178
    :sswitch_data_0
    .sparse-switch
        0x63730000 -> :sswitch_3
        0x64650000 -> :sswitch_4
        0x656e4742 -> :sswitch_2
        0x656e5553 -> :sswitch_1
        0x65730000 -> :sswitch_5
        0x65734553 -> :sswitch_5
        0x65735553 -> :sswitch_5
        0x66720000 -> :sswitch_6
        0x66724341 -> :sswitch_6
        0x66724652 -> :sswitch_6
        0x69740000 -> :sswitch_7
        0x6b6f0000 -> :sswitch_0
        0x6e6c0000 -> :sswitch_8
        0x706c0000 -> :sswitch_9
        0x70740000 -> :sswitch_a
        0x70744252 -> :sswitch_a
        0x70745054 -> :sswitch_a
        0x74720000 -> :sswitch_b
    .end sparse-switch
.end method

.method public registerReceiver()V
    .locals 4

    .prologue
    .line 154
    iget-object v0, p0, Lcom/diotek/diodict/service/DioDictService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/diotek/diodict/service/DioDictService;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.diotek.diodict.lang"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 155
    return-void
.end method

.method public setServiceEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 162
    iput-boolean p1, p0, Lcom/diotek/diodict/service/DioDictService;->mServiceEnabled:Z

    .line 163
    return-void
.end method

.method public setServicePackage(Ljava/lang/String;)V
    .locals 0
    .param p1, "dictPackageName"    # Ljava/lang/String;

    .prologue
    .line 242
    iput-object p1, p0, Lcom/diotek/diodict/service/DioDictService;->mServicePackage:Ljava/lang/String;

    .line 243
    return-void
.end method

.method public setServicePackage(Z)V
    .locals 1
    .param p1, "isPad"    # Z

    .prologue
    .line 235
    if-eqz p1, :cond_0

    .line 236
    const-string v0, "com.diotek.diodict3.hc.samsung.p5"

    iput-object v0, p0, Lcom/diotek/diodict/service/DioDictService;->mServicePackage:Ljava/lang/String;

    .line 240
    :goto_0
    return-void

    .line 238
    :cond_0
    const-string v0, "com.sec.android.EDictionary"

    iput-object v0, p0, Lcom/diotek/diodict/service/DioDictService;->mServicePackage:Ljava/lang/String;

    goto :goto_0
.end method

.method public unbindService()V
    .locals 2

    .prologue
    .line 146
    iget-object v0, p0, Lcom/diotek/diodict/service/DioDictService;->mConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/diodict/service/DioDictService;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 151
    :cond_0
    :goto_0
    return-void

    .line 149
    :cond_1
    iget-object v0, p0, Lcom/diotek/diodict/service/DioDictService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/diotek/diodict/service/DioDictService;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    goto :goto_0
.end method

.method public unregisterReceiver()V
    .locals 2

    .prologue
    .line 158
    iget-object v0, p0, Lcom/diotek/diodict/service/DioDictService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/diotek/diodict/service/DioDictService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 159
    return-void
.end method
