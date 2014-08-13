.class public Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;
.super Ljava/lang/Object;
.source "KnoxVpnHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper$ProfileState;
    }
.end annotation


# static fields
.field private static final CAC_AUTHENTICATION:I = 0x6

.field private static final CERTIFICATE_AUTHENTICATION:I = 0x1

.field private static final DBG:Z

.field private static final INVALID_CONTAINER_ID:I = 0x0

.field private static final INVALID_UID:I = -0x1

.field private static final TAG:Ljava/lang/String; = "FW-KnoxVpnHelper"

.field private static mConnectionManager:Landroid/net/ConnectivityManager;

.field private static mContainerPolicy:Lcom/sec/enterprise/knox/IEnterpriseContainerPolicy;

.field private static mContext:Landroid/content/Context;

.field private static mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private static mIPackageManager:Landroid/content/pm/IPackageManager;

.field private static mInstance:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

.field private static mNotificationManager:Landroid/app/NotificationManager;


# instance fields
.field private mPersonaManager:Landroid/os/PersonaManager;

.field private mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnStorageProvider;

.field private final vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 78
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput-boolean v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->DBG:Z

    .line 82
    sput-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->mInstance:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    .line 84
    sput-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->mContext:Landroid/content/Context;

    .line 86
    sput-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 88
    sput-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->mNotificationManager:Landroid/app/NotificationManager;

    .line 90
    sput-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->mConnectionManager:Landroid/net/ConnectivityManager;

    .line 92
    sput-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->mContainerPolicy:Lcom/sec/enterprise/knox/IEnterpriseContainerPolicy;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnStorageProvider;

    .line 98
    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->mPersonaManager:Landroid/os/PersonaManager;

    .line 115
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;->getInstance()Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;

    .line 126
    sput-object p1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->mContext:Landroid/content/Context;

    .line 127
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnStorageProvider;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnStorageProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnStorageProvider;

    .line 128
    return-void
.end method

.method public static declared-synchronized getConnectionManager()Landroid/net/ConnectivityManager;
    .locals 3

    .prologue
    .line 152
    const-class v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->mConnectionManager:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    .line 153
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->mContext:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->mConnectionManager:Landroid/net/ConnectivityManager;

    .line 156
    :cond_0
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->mConnectionManager:Landroid/net/ConnectivityManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 152
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .locals 4

    .prologue
    .line 132
    const-class v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v1, :cond_0

    .line 133
    sget-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->mContext:Landroid/content/Context;

    const-string v3, "enterprise_policy"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/enterprise/EnterpriseDeviceManager;

    sput-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 136
    :cond_0
    sget-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v1, :cond_1

    .line 137
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Admin cannot be verified"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 138
    .local v0, "exception":Ljava/lang/SecurityException;
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 140
    .end local v0    # "exception":Ljava/lang/SecurityException;
    :cond_1
    :try_start_1
    sget-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    return-object v1
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 118
    const-class v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->mInstance:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    if-nez v0, :cond_0

    .line 120
    new-instance v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->mInstance:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    .line 122
    :cond_0
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->mInstance:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 118
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getNotificationManager()Landroid/app/NotificationManager;
    .locals 3

    .prologue
    .line 144
    const-class v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->mNotificationManager:Landroid/app/NotificationManager;

    if-nez v0, :cond_0

    .line 145
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->mContext:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->mNotificationManager:Landroid/app/NotificationManager;

    .line 148
    :cond_0
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->mNotificationManager:Landroid/app/NotificationManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 144
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getPackageManager()Landroid/content/pm/IPackageManager;
    .locals 1

    .prologue
    .line 160
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    return-object v0
.end method

.method private getPersonManager()Landroid/os/PersonaManager;
    .locals 2

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->mPersonaManager:Landroid/os/PersonaManager;

    if-nez v0, :cond_0

    .line 165
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->mContext:Landroid/content/Context;

    const-string v1, "persona"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PersonaManager;

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->mPersonaManager:Landroid/os/PersonaManager;

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->mPersonaManager:Landroid/os/PersonaManager;

    return-object v0
.end method


# virtual methods
.method public addVpnProfileToDatabase(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;)Z
    .locals 26
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "jsonProfile"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 311
    sget-boolean v22, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->DBG:Z

    if-eqz v22, :cond_0

    const-string v22, "FW-KnoxVpnHelper"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "jsonProfile value is <-->"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    :cond_0
    move-object/from16 v0, p1

    iget v5, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    .line 313
    .local v5, "adminId":I
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->vendorName:Ljava/lang/String;

    move-object/from16 v19, v0

    .line 314
    .local v19, "vendorName":Ljava/lang/String;
    move-object/from16 v0, p1

    iget v11, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    .line 315
    .local v11, "personaId":I
    move-object/from16 v0, v19

    invoke-static {v0, v11}, Lcom/sec/enterprise/knox/GenericVpnPolicy;->getTransformedVendorName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v20

    .line 316
    .local v20, "vendorNameWithCid":Ljava/lang/String;
    const/4 v13, 0x0

    .local v13, "profileName":Ljava/lang/String;
    const/4 v15, 0x0

    .line 317
    .local v15, "protocolType":Ljava/lang/String;
    const/16 v17, -0x1

    .local v17, "routeType":I
    sget v4, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->PROFILE_DEACTIVATED:I

    .line 318
    .local v4, "activateState":I
    const/4 v7, -0x1

    .local v7, "containerVpnState":I
    const/4 v6, 0x0

    .line 319
    .local v6, "chainingEnabled":I
    const/16 v21, -0x1

    .line 320
    .local v21, "vpnServiceType":I
    new-instance v14, Lorg/json/JSONObject;

    move-object/from16 v0, p2

    invoke-direct {v14, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 321
    .local v14, "profileObj":Lorg/json/JSONObject;
    const-string v22, "KNOX_VPN_PARAMETERS"

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    .line 322
    .local v10, "parentAttrObj":Lorg/json/JSONObject;
    const-string v22, "profile_attribute"

    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    .line 323
    .local v12, "profileAttrObj":Lorg/json/JSONObject;
    const-string v22, "knox"

    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    .line 324
    .local v9, "knoxAttrObj":Lorg/json/JSONObject;
    const-string v22, "FW-KnoxVpnHelper"

    const-string v23, "Inside addVpnProfileToDatabase <-->"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    if-eqz v9, :cond_1

    .line 326
    const-string v22, "FW-KnoxVpnHelper"

    const-string v23, "Inside chainAttrObj != null <-->"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    const-string v22, "chaining_enabled"

    move-object/from16 v0, v22

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v16

    .line 328
    .local v16, "returnValue":Z
    const/16 v22, 0x1

    move/from16 v0, v16

    move/from16 v1, v22

    if-ne v0, v1, :cond_4

    const/4 v6, 0x1

    .line 329
    :goto_0
    const-string v22, "FW-KnoxVpnHelper"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Inside chainingEnabled <-->"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    .end local v16    # "returnValue":Z
    :cond_1
    const-string v22, "profileName"

    move-object/from16 v0, v22

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 332
    const-string/jumbo v22, "vpn_type"

    move-object/from16 v0, v22

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 333
    const-string/jumbo v22, "vpn_route_type"

    move-object/from16 v0, v22

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v17

    .line 334
    sget v22, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->SYSTEM_VPN:I

    move/from16 v0, v17

    move/from16 v1, v22

    if-ne v0, v1, :cond_2

    .line 335
    sget v4, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->PROFILE_ACTIVATED:I

    .line 337
    :cond_2
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 338
    .local v8, "cv":Landroid/content/ContentValues;
    const-string v22, "profileName"

    move-object/from16 v0, v22

    invoke-virtual {v8, v0, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    const-string v22, "adminUid"

    new-instance v23, Ljava/lang/Integer;

    move-object/from16 v0, v23

    invoke-direct {v0, v5}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 340
    const-string v22, "personaId"

    new-instance v23, Ljava/lang/Integer;

    move-object/from16 v0, v23

    invoke-direct {v0, v11}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 341
    const-string/jumbo v22, "vendorName"

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    const-string v22, "protocolType"

    move-object/from16 v0, v22

    invoke-virtual {v8, v0, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    const-string v22, "defaultRoute"

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 344
    const-string v22, "activateState"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 345
    const-string v22, "containerVpnState"

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 346
    const-string/jumbo v22, "vpnServiceType"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 347
    const-string v22, "chainingEnabled"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 349
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnStorageProvider;

    move-object/from16 v22, v0

    const-string v23, "VpnProfileInfo"

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    move-object/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3, v8}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnStorageProvider;->putDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v18

    .line 352
    .local v18, "status":Z
    sget-boolean v22, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->DBG:Z

    if-eqz v22, :cond_3

    const-string v22, "FW-KnoxVpnHelper"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "add profile in database : status is "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "profile Name is"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    :cond_3
    return v18

    .line 328
    .end local v8    # "cv":Landroid/content/ContentValues;
    .end local v18    # "status":Z
    .restart local v16    # "returnValue":Z
    :cond_4
    const/4 v6, 0x0

    goto/16 :goto_0
.end method

.method public addVpnProfileToMap(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;)Z
    .locals 21
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "jsonProfile"    # Ljava/lang/String;

    .prologue
    .line 357
    move-object/from16 v0, p1

    iget v2, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    .line 358
    .local v2, "adminId":I
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->vendorName:Ljava/lang/String;

    move-object/from16 v16, v0

    .line 359
    .local v16, "vendorName":Ljava/lang/String;
    move-object/from16 v0, p1

    iget v10, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    .line 360
    .local v10, "personaId":I
    move-object/from16 v0, v16

    invoke-static {v0, v10}, Lcom/sec/enterprise/knox/GenericVpnPolicy;->getTransformedVendorName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v17

    .line 361
    .local v17, "vendorNameWithCid":Ljava/lang/String;
    const/4 v12, 0x0

    .local v12, "profileName":Ljava/lang/String;
    const/4 v14, 0x0

    .line 362
    .local v14, "protocolType":Ljava/lang/String;
    const/4 v15, -0x1

    .local v15, "routeType":I
    sget v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->PROFILE_DEACTIVATED:I

    .line 363
    .local v1, "activateState":I
    const/4 v5, -0x1

    .local v5, "containerVpnState":I
    const/4 v4, 0x0

    .line 365
    .local v4, "chainingEnabled":I
    :try_start_0
    new-instance v13, Lorg/json/JSONObject;

    move-object/from16 v0, p2

    invoke-direct {v13, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 366
    .local v13, "profileObj":Lorg/json/JSONObject;
    const-string v18, "KNOX_VPN_PARAMETERS"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    .line 367
    .local v9, "parentAttrObj":Lorg/json/JSONObject;
    const-string v18, "profile_attribute"

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    .line 368
    .local v11, "profileAttrObj":Lorg/json/JSONObject;
    const-string v18, "knox"

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    .line 369
    .local v8, "knoxAttrObj":Lorg/json/JSONObject;
    if-eqz v8, :cond_0

    .line 370
    const-string v18, "chain"

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 371
    .local v3, "chainAttrObj":Lorg/json/JSONObject;
    if-eqz v3, :cond_0

    .line 372
    const-string v18, "chaining_enabled"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    .line 375
    .end local v3    # "chainAttrObj":Lorg/json/JSONObject;
    :cond_0
    const-string v18, "profileName"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 376
    const-string/jumbo v18, "vpn_type"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 377
    const-string/jumbo v18, "vpn_route_type"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v15

    .line 378
    sget v18, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->SYSTEM_VPN:I

    move/from16 v0, v18

    if-ne v15, v0, :cond_1

    .line 379
    sget v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->PROFILE_ACTIVATED:I

    .line 381
    :cond_1
    if-eqz v12, :cond_2

    .line 382
    new-instance v7, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;

    invoke-direct {v7}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;-><init>()V

    .line 383
    .local v7, "entry":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    invoke-virtual {v7, v12}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->setProfileName(Ljava/lang/String;)V

    .line 384
    invoke-virtual {v7, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->setAdminId(I)V

    .line 385
    invoke-virtual {v7, v10}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->setPersonaId(I)V

    .line 386
    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->setVendorPkgName(Ljava/lang/String;)V

    .line 387
    invoke-virtual {v7, v14}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->setProtocolType(Ljava/lang/String;)V

    .line 388
    invoke-virtual {v7, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->setActivateState(I)V

    .line 389
    invoke-virtual {v7, v15}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->setRouteType(I)V

    .line 391
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->setMarkProfileForDeletion(Z)V

    .line 392
    invoke-virtual {v7, v5}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->setContainerVpnState(I)V

    .line 393
    invoke-virtual {v7, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->setChainingEnabled(I)V

    .line 394
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v12, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;->addProfileEntry(Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;)Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 400
    .end local v7    # "entry":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    :cond_2
    const/16 v18, 0x1

    .end local v8    # "knoxAttrObj":Lorg/json/JSONObject;
    .end local v9    # "parentAttrObj":Lorg/json/JSONObject;
    .end local v11    # "profileAttrObj":Lorg/json/JSONObject;
    .end local v13    # "profileObj":Lorg/json/JSONObject;
    :goto_0
    return v18

    .line 396
    :catch_0
    move-exception v6

    .line 397
    .local v6, "e":Ljava/lang/Exception;
    const-string v18, "FW-KnoxVpnHelper"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "get profilename from json : Error parsing JSON \n"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static {v6}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    const/16 v18, 0x0

    goto :goto_0
.end method

.method public checkForSystemUIDApplicationForVpn(Ljava/lang/String;I)Z
    .locals 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "containerId"    # I

    .prologue
    .line 262
    const/4 v2, 0x0

    .line 263
    .local v2, "isAdminApplication":Z
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    .line 264
    .local v3, "pm":Landroid/content/pm/IPackageManager;
    const/4 v6, -0x1

    .line 266
    .local v6, "uid":I
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 267
    .local v4, "token":J
    const/4 v7, 0x0

    invoke-interface {v3, p1, v7, p2}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 268
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 269
    iget v6, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 270
    sget-boolean v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->DBG:Z

    if-eqz v7, :cond_0

    const-string v7, "FW-KnoxVpnHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "check system UID : uid "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    :cond_0
    invoke-static {v6}, Landroid/os/UserHandle;->getAppId(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    const/16 v8, 0x3e8

    if-ne v7, v8, :cond_1

    .line 272
    const/4 v2, 0x1

    .line 278
    .end local v1    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v4    # "token":J
    :cond_1
    :goto_0
    return v2

    .line 274
    :catch_0
    move-exception v0

    .line 275
    .local v0, "e":Ljava/lang/Exception;
    const-string v7, "FW-KnoxVpnHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception in checkForSystemUIDApplicationForVpn : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    const/4 v6, -0x1

    goto :goto_0
.end method

.method public checkIfAdminHasVpnPermission(ILjava/lang/String;)Z
    .locals 2
    .param p1, "uid"    # I
    .param p2, "permission"    # Ljava/lang/String;

    .prologue
    .line 172
    new-instance v0, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v0, p1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    .line 174
    .local v0, "cxtInfo":Landroid/app/enterprise/ContextInfo;
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    .line 175
    const/4 v1, 0x1

    return v1
.end method

.method public checkIfVpnProfileTableIsEmpty(Ljava/lang/String;)Z
    .locals 8
    .param p1, "vendorName"    # Ljava/lang/String;

    .prologue
    .line 589
    const/4 v2, 0x1

    .line 591
    .local v2, "tableEmpty":Z
    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnStorageProvider;

    const-string v4, "VpnProfileInfo"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "vendorName"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 595
    .local v0, "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-lez v3, :cond_0

    .line 596
    const/4 v2, 0x0

    .line 601
    .end local v0    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    :cond_0
    :goto_0
    const-string v3, "FW-KnoxVpnHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkIfKnoxVpnDatabaseIsEmpty: tableEmpty value is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    return v2

    .line 598
    :catch_0
    move-exception v1

    .line 599
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "FW-KnoxVpnHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception at checkIfKnoxVpnDatabaseIsEmpty API: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public checkSystemVpn(Ljava/lang/String;Ljava/lang/String;)I
    .locals 9
    .param p1, "jsonProfile"    # Ljava/lang/String;
    .param p2, "profileName"    # Ljava/lang/String;

    .prologue
    const/4 v5, -0x1

    .line 405
    :try_start_0
    sget-boolean v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->DBG:Z

    if-eqz v6, :cond_0

    const-string v6, "FW-KnoxVpnHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "checkSystemVpn : profileName =  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    :cond_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 407
    .local v2, "profileJsonObject":Lorg/json/JSONObject;
    const-string v6, "KNOX_VPN_PARAMETERS"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 408
    .local v1, "knoxParentObject":Lorg/json/JSONObject;
    const-string v6, "profile_attribute"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 409
    .local v3, "profileObject":Lorg/json/JSONObject;
    const-string/jumbo v6, "vpn_route_type"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 410
    .local v4, "vpnType":I
    const-string v6, "FW-KnoxVpnHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "checkSystemVpn : vpnType =  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 411
    const/4 v6, 0x1

    if-eq v4, v6, :cond_1

    .line 418
    .end local v1    # "knoxParentObject":Lorg/json/JSONObject;
    .end local v2    # "profileJsonObject":Lorg/json/JSONObject;
    .end local v3    # "profileObject":Lorg/json/JSONObject;
    .end local v4    # "vpnType":I
    :goto_0
    return v5

    .line 414
    :catch_0
    move-exception v0

    .line 415
    .local v0, "e":Ljava/lang/Exception;
    const-string v6, "FW-KnoxVpnHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception checkSystemVpn : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 418
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "knoxParentObject":Lorg/json/JSONObject;
    .restart local v2    # "profileJsonObject":Lorg/json/JSONObject;
    .restart local v3    # "profileObject":Lorg/json/JSONObject;
    .restart local v4    # "vpnType":I
    :cond_1
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public containerPackageListFromVpnDatabase(I)[Ljava/lang/String;
    .locals 13
    .param p1, "container_id"    # I

    .prologue
    .line 282
    const/4 v3, 0x0

    .line 283
    .local v3, "i":I
    const/4 v5, 0x0

    .line 285
    .local v5, "retVal":[Ljava/lang/String;
    :try_start_0
    iget-object v6, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnStorageProvider;

    const-string v7, "VpnPackageInfo"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "packageCid"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "packageName"

    aput-object v12, v10, v11

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 293
    .local v1, "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 294
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v5, v6, [Ljava/lang/String;

    .line 295
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 296
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v6, "packageName"

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    .line 297
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 300
    .end local v0    # "cv":Landroid/content/ContentValues;
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_0
    const-string v6, "FW-KnoxVpnHelper"

    const-string v7, "getting container package list in database : DB read for packages returned NULL"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 305
    .end local v1    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    :cond_1
    :goto_1
    return-object v5

    .line 302
    :catch_0
    move-exception v2

    .line 303
    .local v2, "e":Ljava/lang/Exception;
    const-string v6, "FW-KnoxVpnHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getting container package list in database : Exception "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getAdminUidForPersona(I)I
    .locals 4
    .param p1, "personaId"    # I

    .prologue
    .line 561
    const/4 v0, -0x1

    .line 562
    .local v0, "id":I
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPersonManager()Landroid/os/PersonaManager;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 563
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 564
    .local v1, "ident":J
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPersonManager()Landroid/os/PersonaManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/os/PersonaManager;->getAdminUidForPersona(I)I

    move-result v0

    .line 565
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v3, v0

    .line 568
    .end local v1    # "ident":J
    :goto_0
    return v3

    :cond_0
    const/4 v3, -0x1

    goto :goto_0
.end method

.method public getContainerIdFromPackageName(Ljava/lang/String;)I
    .locals 4
    .param p1, "personifiedPackageName"    # Ljava/lang/String;

    .prologue
    const/4 v1, -0x1

    .line 539
    if-eqz p1, :cond_0

    .line 541
    :try_start_0
    const-string v3, "_"

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 543
    .local v2, "packageArray":[Ljava/lang/String;
    const/4 v3, 0x0

    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 549
    .end local v2    # "packageArray":[Ljava/lang/String;
    :cond_0
    :goto_0
    return v1

    .line 545
    :catch_0
    move-exception v0

    .line 546
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public getInstalledPackages(I)[Ljava/lang/String;
    .locals 16
    .param p1, "containerId"    # I

    .prologue
    .line 203
    :try_start_0
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v9

    .line 204
    .local v9, "pm":Landroid/content/pm/IPackageManager;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 205
    .local v6, "installedPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v11

    .line 206
    .local v11, "token":J
    const/4 v13, 0x0

    move/from16 v0, p1

    invoke-interface {v9, v13, v0}, Landroid/content/pm/IPackageManager;->getInstalledApplications(II)Landroid/content/pm/ParceledListSlice;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v8

    .line 207
    .local v8, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 208
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ApplicationInfo;

    .line 209
    .local v5, "info":Landroid/content/pm/ApplicationInfo;
    iget-object v13, v5, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-interface {v6, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 217
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v6    # "installedPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v8    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v9    # "pm":Landroid/content/pm/IPackageManager;
    .end local v11    # "token":J
    :catch_0
    move-exception v1

    .line 218
    .local v1, "e":Ljava/lang/Exception;
    const-string v13, "FW-KnoxVpnHelper"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Exception in getInstalledPackages : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    const/4 v7, 0x0

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    return-object v7

    .line 211
    .restart local v4    # "i$":Ljava/util/Iterator;
    .restart local v6    # "installedPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v8    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .restart local v9    # "pm":Landroid/content/pm/IPackageManager;
    .restart local v11    # "token":J
    :cond_1
    :try_start_1
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v13

    new-array v7, v13, [Ljava/lang/String;

    .line 212
    .local v7, "installedPackagesArray":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 213
    .local v2, "i":I
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v3, v2

    .end local v2    # "i":I
    .local v3, "i":I
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 214
    .local v10, "str":Ljava/lang/String;
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    aput-object v10, v7, v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move v3, v2

    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto :goto_1
.end method

.method public getOriginalPackageName(ILjava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "containerId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 572
    sget-boolean v4, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->DBG:Z

    if-eqz v4, :cond_0

    const-string v4, "FW-KnoxVpnHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Passed string is :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    :cond_0
    const-string/jumbo v4, "sec_container_"

    invoke-virtual {p2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 574
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    .line 576
    .local v0, "length":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 577
    .local v3, "str":Ljava/lang/StringBuilder;
    const-string/jumbo v4, "sec_container_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 578
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    .line 580
    .local v1, "prefixLen":I
    invoke-virtual {p2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 581
    .local v2, "returnedString":Ljava/lang/String;
    sget-boolean v4, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->DBG:Z

    if-eqz v4, :cond_1

    const-string v4, "FW-KnoxVpnHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Returned string is :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    .end local v0    # "length":I
    .end local v1    # "prefixLen":I
    .end local v2    # "returnedString":Ljava/lang/String;
    .end local v3    # "str":Ljava/lang/StringBuilder;
    :cond_1
    :goto_0
    return-object v2

    :cond_2
    move-object v2, p2

    goto :goto_0
.end method

.method public getPackageNameForUid(I)Ljava/lang/String;
    .locals 6
    .param p1, "uid"    # I

    .prologue
    .line 250
    const/4 v1, 0x0

    .line 252
    .local v1, "packageName":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    .line 253
    .local v2, "pm":Landroid/content/pm/IPackageManager;
    invoke-interface {v2, p1}, Landroid/content/pm/IPackageManager;->getNameForUid(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 258
    .end local v2    # "pm":Landroid/content/pm/IPackageManager;
    :goto_0
    return-object v1

    .line 254
    :catch_0
    move-exception v0

    .line 255
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "FW-KnoxVpnHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception in getPackageNameForUid : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getPersonifiedName(ILjava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "personaId"    # I
    .param p2, "regularPackageName"    # Ljava/lang/String;

    .prologue
    .line 520
    :try_start_0
    sget-boolean v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "FW-KnoxVpnHelper"

    const-string/jumbo v3, "vpn getPersonifiedName : container id is regular device"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 526
    :goto_0
    return-object v1

    .line 523
    :catch_0
    move-exception v0

    .line 524
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "FW-KnoxVpnHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception getting getPersonifiedName : Error :  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getProfileNameFromJsonString(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "jsonProfile"    # Ljava/lang/String;

    .prologue
    .line 422
    const/4 v3, 0x0

    .line 424
    .local v3, "profileName":Ljava/lang/String;
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 425
    .local v4, "profileObj":Lorg/json/JSONObject;
    const-string v5, "KNOX_VPN_PARAMETERS"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 426
    .local v1, "parentAttrObj":Lorg/json/JSONObject;
    const-string v5, "profile_attribute"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 427
    .local v2, "profileAttrObj":Lorg/json/JSONObject;
    const-string v5, "profileName"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 432
    .end local v1    # "parentAttrObj":Lorg/json/JSONObject;
    .end local v2    # "profileAttrObj":Lorg/json/JSONObject;
    .end local v4    # "profileObj":Lorg/json/JSONObject;
    :goto_0
    return-object v3

    .line 428
    :catch_0
    move-exception v0

    .line 429
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "FW-KnoxVpnHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "get profilename from json : Error parsing JSON \n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getRegularPackageName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 530
    if-eqz p1, :cond_0

    .line 532
    const-string v0, "_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 534
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTransformedUIDForPackage(II)I
    .locals 1
    .param p1, "personaId"    # I
    .param p2, "uid"    # I

    .prologue
    .line 246
    invoke-static {p1, p2}, Landroid/os/UserHandle;->getUid(II)I

    move-result v0

    return v0
.end method

.method public getUIDForPackage(ILjava/lang/String;)I
    .locals 9
    .param p1, "personaId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 224
    const/4 v5, -0x1

    .line 228
    .local v5, "uid":I
    :try_start_0
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    .line 229
    .local v2, "pm":Landroid/content/pm/IPackageManager;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 230
    .local v3, "token":J
    const/16 v6, 0x2080

    invoke-interface {v2, p2, v6, p1}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 231
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    sget-boolean v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->DBG:Z

    if-eqz v6, :cond_0

    const-string v6, "FW-KnoxVpnHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "application uid for info :  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    :cond_0
    if-eqz v1, :cond_2

    .line 233
    sget-boolean v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->DBG:Z

    if-eqz v6, :cond_1

    const-string v6, "FW-KnoxVpnHelper"

    const-string v7, "application uid for info : null"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    :cond_1
    iget v5, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 236
    :cond_2
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 237
    sget-boolean v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->DBG:Z

    if-eqz v6, :cond_3

    const-string v6, "FW-KnoxVpnHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "application uid for user "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 242
    .end local v1    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "pm":Landroid/content/pm/IPackageManager;
    .end local v3    # "token":J
    :cond_3
    :goto_0
    return v5

    .line 238
    :catch_0
    move-exception v0

    .line 239
    .local v0, "e":Ljava/lang/Exception;
    const-string v6, "FW-KnoxVpnHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception in getUIDForPackage : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    const/4 v5, -0x1

    goto :goto_0
.end method

.method public declared-synchronized isPackageExists(I)Z
    .locals 10
    .param p1, "containerId"    # I

    .prologue
    .line 449
    monitor-enter p0

    const/4 v0, 0x0

    .line 451
    .local v0, "alreadyExists":Z
    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnStorageProvider;

    const-string v4, "VpnPackageInfo"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "packageCid"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "packageName"

    aput-object v9, v7, v8

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 459
    .local v1, "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-lez v3, :cond_0

    .line 460
    const/4 v0, 0x1

    .line 466
    .end local v1    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 462
    :catch_0
    move-exception v2

    .line 463
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v3, "FW-KnoxVpnHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isPackageExists \n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 449
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public isPackageInstalled(Ljava/lang/String;I)Z
    .locals 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    const/4 v5, 0x0

    .line 180
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    .line 181
    .local v2, "pm":Landroid/content/pm/IPackageManager;
    if-eqz v2, :cond_1

    .line 183
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 184
    .local v3, "token":J
    const/4 v6, 0x0

    invoke-interface {v2, p1, v6, p2}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 185
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 186
    if-eqz v1, :cond_2

    .line 187
    sget-boolean v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->DBG:Z

    if-eqz v6, :cond_0

    const-string v6, "FW-KnoxVpnHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "package present. application uid for user 100 = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    :cond_0
    const/4 v5, 0x1

    .line 197
    .end local v1    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "token":J
    :cond_1
    :goto_0
    return v5

    .line 190
    .restart local v1    # "info":Landroid/content/pm/ApplicationInfo;
    .restart local v3    # "token":J
    :cond_2
    const-string v6, "FW-KnoxVpnHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "package not present : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 193
    .end local v1    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "token":J
    :catch_0
    move-exception v0

    .line 194
    .local v0, "e":Ljava/lang/Exception;
    const-string v6, "FW-KnoxVpnHelper"

    const-string v7, "Exception in isPackageInstalled"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isPersonaExists(I)Z
    .locals 1
    .param p1, "containerId"    # I

    .prologue
    .line 554
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPersonManager()Landroid/os/PersonaManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPersonManager()Landroid/os/PersonaManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/PersonaManager;->exists(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 555
    const/4 v0, 0x1

    .line 557
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized isRangeExists(I)Z
    .locals 6
    .param p1, "containerId"    # I

    .prologue
    .line 436
    monitor-enter p0

    const/4 v0, 0x0

    .line 437
    .local v0, "alreadyExists":Z
    :try_start_0
    iget-object v5, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;

    invoke-virtual {v5}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;->getProfileEntries()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;

    .line 438
    .local v3, "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    invoke-virtual {v3}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->getContainerVpnState()I

    move-result v1

    .line 439
    .local v1, "containerVpnState":I
    invoke-virtual {v3}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->getProfileName()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 440
    .local v4, "profileName":Ljava/lang/String;
    if-ne v1, p1, :cond_0

    .line 441
    const/4 v0, 0x1

    goto :goto_0

    .line 444
    .end local v1    # "containerVpnState":I
    .end local v3    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    .end local v4    # "profileName":Ljava/lang/String;
    :cond_1
    monitor-exit p0

    return v0

    .line 436
    .end local v2    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method
