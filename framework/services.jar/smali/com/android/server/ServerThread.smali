.class Lcom/android/server/ServerThread;
.super Ljava/lang/Object;
.source "SystemServer.java"


# static fields
.field private static final DIR_ENCRYPTION:Z

.field public static final ENCRYPTED_STATE:Ljava/lang/String; = "1"

.field public static final ENCRYPTING_STATE:Ljava/lang/String; = "trigger_restart_min_framework"

.field private static final TAG:Ljava/lang/String; = "SystemServer"

.field private static final is3LMAllowed:Z

.field private static final is3LMPowerSavingEnabled:Z


# instance fields
.field mContentResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 216
    const-string v0, "ro.sec.fle.encryption"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/ServerThread;->DIR_ENCRYPTION:Z

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private createServiceWithConstructor(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .param p1, "serviceClassName"    # Ljava/lang/String;
    .param p2, "ptype"    # [Ljava/lang/Class;
    .param p3, "objArray"    # [Ljava/lang/Object;

    .prologue
    .line 2175
    const/4 v5, 0x0

    .line 2176
    .local v5, "object":Ljava/lang/Object;
    const-string v6, "SystemServer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "registerService service: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2178
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 2179
    .local v0, "c":Ljava/lang/Class;
    invoke-virtual {v0, p2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 2180
    .local v1, "cons":Ljava/lang/reflect/Constructor;
    invoke-virtual {v1, p3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v5

    .line 2188
    .end local v0    # "c":Ljava/lang/Class;
    .end local v1    # "cons":Ljava/lang/reflect/Constructor;
    .end local v5    # "object":Ljava/lang/Object;
    :goto_0
    return-object v5

    .line 2181
    .restart local v5    # "object":Ljava/lang/Object;
    :catch_0
    move-exception v3

    .line 2182
    .local v3, "iae":Ljava/lang/IllegalAccessException;
    const-string v6, "SystemServer"

    const-string v7, "Got expected PackageAccess complaint"

    invoke-static {v6, v7, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2183
    .end local v3    # "iae":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v4

    .line 2184
    .local v4, "ie":Ljava/lang/InstantiationError;
    const-string v6, "SystemServer"

    const-string v7, "Got expected InstantationError"

    invoke-static {v6, v7, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2185
    .end local v4    # "ie":Ljava/lang/InstantiationError;
    :catch_2
    move-exception v2

    .line 2186
    .local v2, "ex":Ljava/lang/Exception;
    const-string v6, "SystemServer"

    const-string v7, "Got unexpected MaybeAbstract failure"

    invoke-static {v6, v7, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static final startEmergencyModeService(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 2166
    :try_start_0
    invoke-static {p0}, Lcom/sec/android/emergencymode/EmergencyManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/emergencymode/EmergencyManager;

    move-result-object v1

    .line 2167
    .local v1, "emMgr":Lcom/sec/android/emergencymode/EmergencyManager;
    invoke-virtual {v1}, Lcom/sec/android/emergencymode/EmergencyManager;->readyEmergencyMode()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2172
    .end local v1    # "emMgr":Lcom/sec/android/emergencymode/EmergencyManager;
    :goto_0
    return-void

    .line 2168
    :catch_0
    move-exception v0

    .line 2169
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "SystemServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Starting emergency service failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static final startFingerprintService(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 2149
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.sec.feature.fingerprint_manager_service"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2151
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 2152
    .local v1, "intent":Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.samsung.android.fingerprint.service"

    const-string v4, "com.samsung.android.fingerprint.service.FingerprintServiceStarter"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2155
    sget-object v2, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2161
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 2157
    :catch_0
    move-exception v0

    .line 2158
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "SystemServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Starting fingerprint service failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static final startSystemUi(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 2141
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2142
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.systemui"

    const-string v3, "com.android.systemui.SystemUIService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2145
    sget-object v1, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 2146
    return-void
.end method


# virtual methods
.method public initAndLoop()V
    .locals 235

    .prologue
    .line 224
    const-string v7, "SystemServer"

    const-string v9, "!@Boot: Start initAndLoop"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    const/16 v7, 0xbc2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    invoke-static {v7, v9, v10}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 228
    invoke-static {}, Landroid/os/Looper;->prepareMainLooper()V

    .line 231
    const/16 v7, -0x13

    invoke-static {v7}, Landroid/os/Process;->setThreadPriority(I)V

    .line 237
    const/4 v7, 0x1

    invoke-static {v7}, Lcom/android/internal/os/BinderInternal;->disableBackgroundScheduling(Z)V

    .line 238
    const/4 v7, 0x0

    invoke-static {v7}, Landroid/os/Process;->setCanSelfBackground(Z)V

    .line 242
    const-string/jumbo v7, "sys.shutdown.requested"

    const-string v9, ""

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v197

    .line 244
    .local v197, "shutdownAction":Ljava/lang/String;
    if-eqz v197, :cond_0

    invoke-virtual/range {v197 .. v197}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_0

    .line 245
    const/4 v7, 0x0

    move-object/from16 v0, v197

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v9, 0x31

    if-ne v7, v9, :cond_1

    const/16 v188, 0x1

    .line 248
    .local v188, "reboot":Z
    :goto_0
    invoke-virtual/range {v197 .. v197}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v9, 0x1

    if-le v7, v9, :cond_2

    .line 249
    const/4 v7, 0x1

    invoke-virtual/range {v197 .. v197}, Ljava/lang/String;->length()I

    move-result v9

    move-object/from16 v0, v197

    invoke-virtual {v0, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v187

    .line 254
    .local v187, "reason":Ljava/lang/String;
    :goto_1
    move/from16 v0, v188

    move-object/from16 v1, v187

    invoke-static {v0, v1}, Lcom/android/server/power/ShutdownThread;->rebootOrShutdown(ZLjava/lang/String;)V

    .line 258
    .end local v187    # "reason":Ljava/lang/String;
    .end local v188    # "reboot":Z
    :cond_0
    const-string v7, "ro.factorytest"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v132

    .line 259
    .local v132, "factoryTestStr":Ljava/lang/String;
    const-string v7, ""

    move-object/from16 v0, v132

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/16 v131, 0x0

    .line 261
    .local v131, "factoryTest":I
    :goto_2
    const-string v7, "1"

    const-string v9, "ro.config.headless"

    const-string v10, "0"

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    .line 263
    .local v33, "headless":Z
    const/16 v143, 0x0

    .line 264
    .local v143, "installer":Lcom/android/server/pm/Installer;
    const/16 v70, 0x0

    .line 265
    .local v70, "accountManager":Lcom/android/server/accounts/AccountManagerService;
    const/16 v102, 0x0

    .line 266
    .local v102, "contentService":Lcom/android/server/content/ContentService;
    const/16 v148, 0x0

    .line 267
    .local v148, "lights":Lcom/android/server/LightsService;
    const/4 v4, 0x0

    .line 268
    .local v4, "power":Lcom/android/server/power/PowerManagerService;
    const/16 v120, 0x0

    .line 269
    .local v120, "display":Lcom/android/server/display/DisplayManagerService;
    const/16 v81, 0x0

    .line 270
    .local v81, "battery":Lcom/android/server/BatteryService;
    const/16 v223, 0x0

    .line 271
    .local v223, "vibrator":Lcom/android/server/VibratorService;
    const/16 v72, 0x0

    .line 272
    .local v72, "alarm":Lcom/android/server/AlarmManagerService;
    const/16 v162, 0x0

    .line 273
    .local v162, "mountService":Lcom/android/server/MountService;
    const/16 v30, 0x0

    .line 274
    .local v30, "networkManagement":Lcom/android/server/NetworkManagementService;
    const/16 v29, 0x0

    .line 275
    .local v29, "networkStats":Lcom/android/server/net/NetworkStatsService;
    const/16 v169, 0x0

    .line 276
    .local v169, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    const/16 v94, 0x0

    .line 277
    .local v94, "connectivity":Lcom/android/server/ConnectivityService;
    const/16 v90, 0x0

    .line 278
    .local v90, "cneObj":Ljava/lang/Object;
    const/16 v231, 0x0

    .line 279
    .local v231, "wifiP2p":Landroid/net/wifi/p2p/WifiP2pService;
    const/16 v228, 0x0

    .line 282
    .local v228, "wifi":Lcom/android/server/wifi/WifiService;
    const/16 v121, 0x0

    .line 285
    .local v121, "displayColor":Lcom/android/server/AdaptiveDisplayColorService;
    const/16 v230, 0x0

    .line 287
    .local v230, "wifiOffloadService":Lcom/android/server/WifiOffloadService;
    const/16 v196, 0x0

    .line 288
    .local v196, "serviceDiscovery":Lcom/android/server/NsdService;
    const/16 v179, 0x0

    .line 289
    .local v179, "pm":Landroid/content/pm/IPackageManager;
    const/4 v5, 0x0

    .line 290
    .local v5, "context":Landroid/content/Context;
    const/16 v233, 0x0

    .line 291
    .local v233, "wm":Lcom/android/server/wm/WindowManagerService;
    const/16 v82, 0x0

    .line 292
    .local v82, "bluetooth":Lcom/android/server/BluetoothManagerService;
    const/16 v123, 0x0

    .line 293
    .local v123, "dock":Lcom/android/server/DockObserver;
    const/16 v220, 0x0

    .line 294
    .local v220, "usb":Lcom/android/server/usb/UsbService;
    const/16 v194, 0x0

    .line 295
    .local v194, "serial":Lcom/android/server/SerialService;
    const/16 v216, 0x0

    .line 296
    .local v216, "twilight":Lcom/android/server/TwilightService;
    const/16 v218, 0x0

    .line 297
    .local v218, "uiMode":Lcom/android/server/UiModeManagerService;
    const/16 v189, 0x0

    .line 298
    .local v189, "recognition":Lcom/android/server/RecognitionManagerService;
    const/16 v171, 0x0

    .line 299
    .local v171, "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    const/16 v91, 0x0

    .line 300
    .local v91, "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    const/16 v142, 0x0

    .line 301
    .local v142, "inputManager":Lcom/android/server/input/InputManagerService;
    const/16 v203, 0x0

    .line 302
    .local v203, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    const/16 v166, 0x0

    .line 303
    .local v166, "msimTelephonyRegistry":Lcom/android/server/MSimTelephonyRegistry;
    const/16 v98, 0x0

    .line 305
    .local v98, "consumerIr":Lcom/android/server/ConsumerIrService;
    const/16 v107, 0x0

    .line 307
    .local v107, "dEncService":Lcom/android/server/DirEncryptService;
    const/16 v153, 0x0

    .line 309
    .local v153, "mHMS":Lcom/android/server/HarmonyEASService;
    const/16 v109, 0x0

    .line 310
    .local v109, "deviceManager":Lcom/android/server/DeviceManager3LMService;
    const/16 v181, 0x0

    .line 314
    .local v181, "powerSaving":Lcom/android/server/PowerSaving3LMService;
    const/16 v185, 0x0

    .line 316
    .local v185, "rcpManagerService":Lcom/android/server/RCPManagerService;
    const/16 v178, 0x0

    .line 320
    .local v178, "personaService":Lcom/android/server/pm/PersonaManagerService;
    const/16 v100, 0x0

    .line 321
    .local v100, "containerService":Lcom/sec/knox/container/EnterpriseContainerService;
    const-string v7, "1"

    const-string v9, "ro.config.knox"

    const-string v10, "0"

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v62

    .line 325
    .local v62, "knoxV1Enabled":Z
    const/16 v208, 0x0

    .line 326
    .local v208, "timaService":Lcom/android/server/TimaService;
    const/16 v206, 0x0

    .line 329
    .local v206, "timaObserver":Lcom/android/server/TimaObserver;
    const/16 v164, 0x0

    .line 333
    .local v164, "msapwifi":Lcom/android/server/MsapWifiService;
    :try_start_0
    invoke-static {}, Lcom/android/server/ServiceKeeper;->authorizeLoadProcedure()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 340
    :goto_3
    new-instance v234, Landroid/os/HandlerThread;

    const-string v7, "WindowManager"

    move-object/from16 v0, v234

    invoke-direct {v0, v7}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 341
    .local v234, "wmHandlerThread":Landroid/os/HandlerThread;
    invoke-virtual/range {v234 .. v234}, Landroid/os/HandlerThread;->start()V

    .line 342
    new-instance v21, Landroid/os/Handler;

    invoke-virtual/range {v234 .. v234}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v7

    move-object/from16 v0, v21

    invoke-direct {v0, v7}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 343
    .local v21, "wmHandler":Landroid/os/Handler;
    new-instance v7, Lcom/android/server/ServerThread$1;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/android/server/ServerThread$1;-><init>(Lcom/android/server/ServerThread;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 360
    const/16 v24, 0x0

    .line 361
    .local v24, "onlyCore":Z
    const/16 v134, 0x0

    .line 366
    .local v134, "firstBoot":Z
    :try_start_1
    const-string v7, "SystemServer"

    const-string v9, "Waiting for installd to be ready."

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    new-instance v144, Lcom/android/server/pm/Installer;

    invoke-direct/range {v144 .. v144}, Lcom/android/server/pm/Installer;-><init>()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 368
    .end local v143    # "installer":Lcom/android/server/pm/Installer;
    .local v144, "installer":Lcom/android/server/pm/Installer;
    :try_start_2
    invoke-virtual/range {v144 .. v144}, Lcom/android/server/pm/Installer;->ping()Z

    .line 370
    const-string v7, "SystemServer"

    const-string v9, "Power Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    new-instance v180, Lcom/android/server/power/PowerManagerService;

    invoke-direct/range {v180 .. v180}, Lcom/android/server/power/PowerManagerService;-><init>()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_8f

    .line 372
    .end local v4    # "power":Lcom/android/server/power/PowerManagerService;
    .local v180, "power":Lcom/android/server/power/PowerManagerService;
    :try_start_3
    const-string v7, "power"

    move-object/from16 v0, v180

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 394
    const-string v7, "SystemServer"

    const-string v9, "Activity Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    invoke-static/range {v131 .. v131}, Lcom/android/server/am/ActivityManagerService;->main(I)Landroid/content/Context;
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_90

    move-result-object v5

    move-object/from16 v4, v180

    .end local v180    # "power":Lcom/android/server/power/PowerManagerService;
    .restart local v4    # "power":Lcom/android/server/power/PowerManagerService;
    move-object/from16 v143, v144

    .line 401
    .end local v144    # "installer":Lcom/android/server/pm/Installer;
    .restart local v143    # "installer":Lcom/android/server/pm/Installer;
    :goto_4
    const-string v7, "config.disable_storage"

    const/4 v9, 0x0

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v117

    .line 402
    .local v117, "disableStorage":Z
    const-string v7, "config.disable_media"

    const/4 v9, 0x0

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v114

    .line 403
    .local v114, "disableMedia":Z
    const-string v7, "config.disable_bluetooth"

    const/4 v9, 0x0

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v112

    .line 404
    .local v112, "disableBluetooth":Z
    const-string v7, "config.disable_telephony"

    const/4 v9, 0x0

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v119

    .line 405
    .local v119, "disableTelephony":Z
    const-string v7, "config.disable_location"

    const/4 v9, 0x0

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v113

    .line 406
    .local v113, "disableLocation":Z
    const-string v7, "config.disable_systemui"

    const/4 v9, 0x0

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v118

    .line 407
    .local v118, "disableSystemUI":Z
    const-string v7, "config.disable_noncore"

    const/4 v9, 0x0

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v116

    .line 408
    .local v116, "disableNonCoreServices":Z
    const-string v7, "config.disable_network"

    const/4 v9, 0x0

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v115

    .line 411
    .local v115, "disableNetwork":Z
    :try_start_4
    const-string v7, "SystemServer"

    const-string v9, "Display Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    new-instance v11, Lcom/android/server/display/DisplayManagerService;

    move-object/from16 v0, v21

    invoke-direct {v11, v5, v0}, Lcom/android/server/display/DisplayManagerService;-><init>(Landroid/content/Context;Landroid/os/Handler;)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_7e

    .line 413
    .end local v120    # "display":Lcom/android/server/display/DisplayManagerService;
    .local v11, "display":Lcom/android/server/display/DisplayManagerService;
    :try_start_5
    const-string v7, "display"

    const/4 v9, 0x1

    invoke-static {v7, v11, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;Z)V

    .line 415
    const-string v7, "SystemServer"

    const-string v9, "Telephony Registry"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->isMultiSimSlot()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 418
    const/16 v198, 0x0

    .local v198, "simSlotNum":I
    :goto_5
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getSimSlotCount()I

    move-result v7

    move/from16 v0, v198

    if-ge v0, v7, :cond_5

    .line 419
    const-string/jumbo v7, "telephony.registry"

    move/from16 v0, v198

    invoke-static {v7, v0}, Lcom/android/internal/telephony/MultiSimManager;->appendSimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    new-instance v9, Lcom/android/server/TelephonyRegistry;

    move/from16 v0, v198

    invoke-direct {v9, v5, v0}, Lcom/android/server/TelephonyRegistry;-><init>(Landroid/content/Context;I)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_3

    .line 418
    add-int/lit8 v198, v198, 0x1

    goto :goto_5

    .line 245
    .end local v4    # "power":Lcom/android/server/power/PowerManagerService;
    .end local v5    # "context":Landroid/content/Context;
    .end local v11    # "display":Lcom/android/server/display/DisplayManagerService;
    .end local v21    # "wmHandler":Landroid/os/Handler;
    .end local v24    # "onlyCore":Z
    .end local v29    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .end local v30    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .end local v33    # "headless":Z
    .end local v62    # "knoxV1Enabled":Z
    .end local v70    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .end local v72    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v81    # "battery":Lcom/android/server/BatteryService;
    .end local v82    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    .end local v90    # "cneObj":Ljava/lang/Object;
    .end local v91    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .end local v94    # "connectivity":Lcom/android/server/ConnectivityService;
    .end local v98    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v100    # "containerService":Lcom/sec/knox/container/EnterpriseContainerService;
    .end local v102    # "contentService":Lcom/android/server/content/ContentService;
    .end local v107    # "dEncService":Lcom/android/server/DirEncryptService;
    .end local v109    # "deviceManager":Lcom/android/server/DeviceManager3LMService;
    .end local v112    # "disableBluetooth":Z
    .end local v113    # "disableLocation":Z
    .end local v114    # "disableMedia":Z
    .end local v115    # "disableNetwork":Z
    .end local v116    # "disableNonCoreServices":Z
    .end local v117    # "disableStorage":Z
    .end local v118    # "disableSystemUI":Z
    .end local v119    # "disableTelephony":Z
    .end local v121    # "displayColor":Lcom/android/server/AdaptiveDisplayColorService;
    .end local v123    # "dock":Lcom/android/server/DockObserver;
    .end local v131    # "factoryTest":I
    .end local v132    # "factoryTestStr":Ljava/lang/String;
    .end local v134    # "firstBoot":Z
    .end local v142    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v143    # "installer":Lcom/android/server/pm/Installer;
    .end local v148    # "lights":Lcom/android/server/LightsService;
    .end local v153    # "mHMS":Lcom/android/server/HarmonyEASService;
    .end local v162    # "mountService":Lcom/android/server/MountService;
    .end local v164    # "msapwifi":Lcom/android/server/MsapWifiService;
    .end local v166    # "msimTelephonyRegistry":Lcom/android/server/MSimTelephonyRegistry;
    .end local v169    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v171    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .end local v178    # "personaService":Lcom/android/server/pm/PersonaManagerService;
    .end local v179    # "pm":Landroid/content/pm/IPackageManager;
    .end local v181    # "powerSaving":Lcom/android/server/PowerSaving3LMService;
    .end local v185    # "rcpManagerService":Lcom/android/server/RCPManagerService;
    .end local v189    # "recognition":Lcom/android/server/RecognitionManagerService;
    .end local v194    # "serial":Lcom/android/server/SerialService;
    .end local v196    # "serviceDiscovery":Lcom/android/server/NsdService;
    .end local v198    # "simSlotNum":I
    .end local v203    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v206    # "timaObserver":Lcom/android/server/TimaObserver;
    .end local v208    # "timaService":Lcom/android/server/TimaService;
    .end local v216    # "twilight":Lcom/android/server/TwilightService;
    .end local v218    # "uiMode":Lcom/android/server/UiModeManagerService;
    .end local v220    # "usb":Lcom/android/server/usb/UsbService;
    .end local v223    # "vibrator":Lcom/android/server/VibratorService;
    .end local v228    # "wifi":Lcom/android/server/wifi/WifiService;
    .end local v230    # "wifiOffloadService":Lcom/android/server/WifiOffloadService;
    .end local v231    # "wifiP2p":Landroid/net/wifi/p2p/WifiP2pService;
    .end local v233    # "wm":Lcom/android/server/wm/WindowManagerService;
    .end local v234    # "wmHandlerThread":Landroid/os/HandlerThread;
    :cond_1
    const/16 v188, 0x0

    goto/16 :goto_0

    .line 251
    .restart local v188    # "reboot":Z
    :cond_2
    const/16 v187, 0x0

    .restart local v187    # "reason":Ljava/lang/String;
    goto/16 :goto_1

    .line 259
    .end local v187    # "reason":Ljava/lang/String;
    .end local v188    # "reboot":Z
    .restart local v132    # "factoryTestStr":Ljava/lang/String;
    :cond_3
    invoke-static/range {v132 .. v132}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v131

    goto/16 :goto_2

    .line 334
    .restart local v4    # "power":Lcom/android/server/power/PowerManagerService;
    .restart local v5    # "context":Landroid/content/Context;
    .restart local v29    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .restart local v30    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .restart local v33    # "headless":Z
    .restart local v62    # "knoxV1Enabled":Z
    .restart local v70    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v72    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v81    # "battery":Lcom/android/server/BatteryService;
    .restart local v82    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    .restart local v90    # "cneObj":Ljava/lang/Object;
    .restart local v91    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v94    # "connectivity":Lcom/android/server/ConnectivityService;
    .restart local v98    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v100    # "containerService":Lcom/sec/knox/container/EnterpriseContainerService;
    .restart local v102    # "contentService":Lcom/android/server/content/ContentService;
    .restart local v107    # "dEncService":Lcom/android/server/DirEncryptService;
    .restart local v109    # "deviceManager":Lcom/android/server/DeviceManager3LMService;
    .restart local v120    # "display":Lcom/android/server/display/DisplayManagerService;
    .restart local v121    # "displayColor":Lcom/android/server/AdaptiveDisplayColorService;
    .restart local v123    # "dock":Lcom/android/server/DockObserver;
    .restart local v131    # "factoryTest":I
    .restart local v142    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v143    # "installer":Lcom/android/server/pm/Installer;
    .restart local v148    # "lights":Lcom/android/server/LightsService;
    .restart local v153    # "mHMS":Lcom/android/server/HarmonyEASService;
    .restart local v162    # "mountService":Lcom/android/server/MountService;
    .restart local v164    # "msapwifi":Lcom/android/server/MsapWifiService;
    .restart local v166    # "msimTelephonyRegistry":Lcom/android/server/MSimTelephonyRegistry;
    .restart local v169    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v171    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .restart local v178    # "personaService":Lcom/android/server/pm/PersonaManagerService;
    .restart local v179    # "pm":Landroid/content/pm/IPackageManager;
    .restart local v181    # "powerSaving":Lcom/android/server/PowerSaving3LMService;
    .restart local v185    # "rcpManagerService":Lcom/android/server/RCPManagerService;
    .restart local v189    # "recognition":Lcom/android/server/RecognitionManagerService;
    .restart local v194    # "serial":Lcom/android/server/SerialService;
    .restart local v196    # "serviceDiscovery":Lcom/android/server/NsdService;
    .restart local v203    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v206    # "timaObserver":Lcom/android/server/TimaObserver;
    .restart local v208    # "timaService":Lcom/android/server/TimaService;
    .restart local v216    # "twilight":Lcom/android/server/TwilightService;
    .restart local v218    # "uiMode":Lcom/android/server/UiModeManagerService;
    .restart local v220    # "usb":Lcom/android/server/usb/UsbService;
    .restart local v223    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v228    # "wifi":Lcom/android/server/wifi/WifiService;
    .restart local v230    # "wifiOffloadService":Lcom/android/server/WifiOffloadService;
    .restart local v231    # "wifiP2p":Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v233    # "wm":Lcom/android/server/wm/WindowManagerService;
    :catch_0
    move-exception v127

    .line 335
    .local v127, "e":Ljava/lang/Exception;
    const-string v7, "SystemServer"

    const-string v9, "Failure starting ServiceKeeper"

    move-object/from16 v0, v127

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 396
    .end local v127    # "e":Ljava/lang/Exception;
    .restart local v21    # "wmHandler":Landroid/os/Handler;
    .restart local v24    # "onlyCore":Z
    .restart local v134    # "firstBoot":Z
    .restart local v234    # "wmHandlerThread":Landroid/os/HandlerThread;
    :catch_1
    move-exception v127

    .line 397
    .local v127, "e":Ljava/lang/RuntimeException;
    :goto_6
    const-string v7, "System"

    const-string v9, "******************************************"

    invoke-static {v7, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    const-string v7, "System"

    const-string v9, "************ Failure starting bootstrap service"

    move-object/from16 v0, v127

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4

    .line 422
    .end local v120    # "display":Lcom/android/server/display/DisplayManagerService;
    .end local v127    # "e":Ljava/lang/RuntimeException;
    .restart local v11    # "display":Lcom/android/server/display/DisplayManagerService;
    .restart local v112    # "disableBluetooth":Z
    .restart local v113    # "disableLocation":Z
    .restart local v114    # "disableMedia":Z
    .restart local v115    # "disableNetwork":Z
    .restart local v116    # "disableNonCoreServices":Z
    .restart local v117    # "disableStorage":Z
    .restart local v118    # "disableSystemUI":Z
    .restart local v119    # "disableTelephony":Z
    :cond_4
    :try_start_6
    new-instance v204, Lcom/android/server/TelephonyRegistry;

    move-object/from16 v0, v204

    invoke-direct {v0, v5}, Lcom/android/server/TelephonyRegistry;-><init>(Landroid/content/Context;)V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_3

    .line 423
    .end local v203    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .local v204, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :try_start_7
    const-string/jumbo v7, "telephony.registry"

    move-object/from16 v0, v204

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_7f

    move-object/from16 v203, v204

    .line 427
    .end local v204    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v203    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :cond_5
    :try_start_8
    const-string v7, "Blueberry"

    const-string v9, "Strawberry"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 428
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 429
    const-string v7, "SystemServer"

    const-string v9, "MSimTelephony Registry"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    new-instance v167, Lcom/android/server/MSimTelephonyRegistry;

    move-object/from16 v0, v167

    invoke-direct {v0, v5}, Lcom/android/server/MSimTelephonyRegistry;-><init>(Landroid/content/Context;)V
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_3

    .line 431
    .end local v166    # "msimTelephonyRegistry":Lcom/android/server/MSimTelephonyRegistry;
    .local v167, "msimTelephonyRegistry":Lcom/android/server/MSimTelephonyRegistry;
    :try_start_9
    const-string/jumbo v7, "telephony.msim.registry"

    move-object/from16 v0, v167

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_80

    move-object/from16 v166, v167

    .line 435
    .end local v167    # "msimTelephonyRegistry":Lcom/android/server/MSimTelephonyRegistry;
    .restart local v166    # "msimTelephonyRegistry":Lcom/android/server/MSimTelephonyRegistry;
    :cond_6
    :try_start_a
    const-string v7, "SystemServer"

    const-string v9, "Scheduling Policy"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    const-string/jumbo v7, "scheduling_policy"

    new-instance v9, Lcom/android/server/os/SchedulingPolicyService;

    invoke-direct {v9}, Lcom/android/server/os/SchedulingPolicyService;-><init>()V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 438
    invoke-static {v5}, Lcom/android/server/AttributeCache;->init(Landroid/content/Context;)V

    .line 440
    invoke-virtual {v11}, Lcom/android/server/display/DisplayManagerService;->waitForDefaultDisplay()Z

    move-result v7

    if-nez v7, :cond_7

    .line 441
    const-string v7, "Timeout waiting for default display to be initialized."

    new-instance v9, Ljava/lang/Throwable;

    invoke-direct {v9}, Ljava/lang/Throwable;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v9}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 445
    :cond_7
    const-string v7, "SystemServer"

    const-string v9, "Package Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    const-string/jumbo v7, "vold.decrypt"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    .line 448
    .local v106, "cryptState":Ljava/lang/String;
    const-string/jumbo v7, "trigger_restart_min_framework"

    move-object/from16 v0, v106

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_48

    .line 449
    const-string v7, "SystemServer"

    const-string v9, "Detected encryption in progress - only parsing core apps"

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    const/16 v24, 0x1

    .line 457
    :cond_8
    :goto_7
    const-string v7, "1"

    const-string v9, "ro.config.tima"

    const-string v10, "0"

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_3

    move-result v205

    .line 458
    .local v205, "timaEnabled":Z
    if-eqz v205, :cond_9

    .line 460
    :try_start_b
    const-string v7, "SystemServer"

    const-string v9, "TIMA Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    new-instance v209, Lcom/android/server/TimaService;

    move-object/from16 v0, v209

    invoke-direct {v0, v5}, Lcom/android/server/TimaService;-><init>(Landroid/content/Context;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_3

    .line 462
    .end local v208    # "timaService":Lcom/android/server/TimaService;
    .local v209, "timaService":Lcom/android/server/TimaService;
    :try_start_c
    const-string/jumbo v7, "tima"

    move-object/from16 v0, v209

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_8e
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_81

    move-object/from16 v208, v209

    .line 468
    .end local v209    # "timaService":Lcom/android/server/TimaService;
    .restart local v208    # "timaService":Lcom/android/server/TimaService;
    :goto_8
    :try_start_d
    const-string v7, "SystemServer"

    const-string v9, "TIMA Observer"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    new-instance v207, Lcom/android/server/TimaObserver;

    move-object/from16 v0, v207

    invoke-direct {v0, v5}, Lcom/android/server/TimaObserver;-><init>(Landroid/content/Context;)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_3

    .end local v206    # "timaObserver":Lcom/android/server/TimaObserver;
    .local v207, "timaObserver":Lcom/android/server/TimaObserver;
    move-object/from16 v206, v207

    .line 477
    .end local v207    # "timaObserver":Lcom/android/server/TimaObserver;
    .restart local v206    # "timaObserver":Lcom/android/server/TimaObserver;
    :goto_9
    :try_start_e
    const-string v7, "3.0"

    const-string v9, "ro.config.timaversion"

    const-string v10, "0"

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v210

    .line 478
    .local v210, "timaversion":Z
    if-eqz v210, :cond_9

    .line 479
    const-string v7, "com.sec.tima.TimaKeyStoreProvider"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v146

    .line 481
    .local v146, "keyStoreClass":Ljava/lang/Class;
    invoke-virtual/range {v146 .. v146}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/security/Provider;

    invoke-static {v7}, Ljava/security/Security;->addProvider(Ljava/security/Provider;)I

    .line 482
    const-string v7, "SystemServer"

    const-string v9, "Added TimaKesytore provider"

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_3

    .line 491
    .end local v146    # "keyStoreClass":Ljava/lang/Class;
    .end local v210    # "timaversion":Z
    :cond_9
    :goto_a
    :try_start_f
    const-string v7, "SystemServer"

    const-string v9, "!@Boot: Start PackageManagerService"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    if-eqz v131, :cond_49

    const/4 v7, 0x1

    :goto_b
    move-object/from16 v0, v143

    move/from16 v1, v24

    invoke-static {v5, v0, v7, v1}, Lcom/android/server/pm/PackageManagerService;->main(Landroid/content/Context;Lcom/android/server/pm/Installer;ZZ)Landroid/content/pm/IPackageManager;

    move-result-object v179

    .line 495
    const-string v7, "SystemServer"

    const-string v9, "!@Boot: End PackageManagerService"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_3

    .line 497
    :try_start_10
    invoke-interface/range {v179 .. v179}, Landroid/content/pm/IPackageManager;->isFirstBoot()Z
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_10} :catch_62
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_10} :catch_3

    move-result v134

    .line 501
    :goto_c
    :try_start_11
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->setSystemProcess()V

    .line 503
    const-string v7, "SystemServer"

    const-string v9, "Entropy Mixer"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    const-string v7, "entropy"

    new-instance v9, Lcom/android/server/EntropyMixer;

    invoke-direct {v9, v5}, Lcom/android/server/EntropyMixer;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 506
    const-string v7, "SystemServer"

    const-string v9, "User Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    const-string/jumbo v7, "user"

    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 511
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v147

    .line 512
    .local v147, "knoxVerInfo":Landroid/os/Bundle;
    const-string v7, "2.0"

    const-string/jumbo v9, "version"

    move-object/from16 v0, v147

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_a

    const-string v7, "1.0"

    const-string/jumbo v9, "version"

    move-object/from16 v0, v147

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_11
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_11} :catch_3

    move-result v7

    if-eqz v7, :cond_b

    .line 514
    :cond_a
    :try_start_12
    const-string v7, "SystemServer"

    const-string v9, "SEAMS"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    const-string v7, "SEAMService"

    new-instance v9, Lcom/android/server/SEAMService;

    invoke-direct {v9, v5}, Lcom/android/server/SEAMService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_12} :catch_3

    .line 523
    :cond_b
    :goto_d
    :try_start_13
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v222

    .line 524
    .local v222, "versionInfo":Landroid/os/Bundle;
    const-string v7, "2.0"

    const-string/jumbo v9, "version"

    move-object/from16 v0, v222

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 525
    const-string v7, "SystemServer"

    const-string v9, "Persona Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    invoke-static {}, Lcom/android/server/pm/PersonaManagerService;->getInstance()Lcom/android/server/pm/PersonaManagerService;

    move-result-object v178

    .line 527
    const-string v7, "persona"

    move-object/from16 v0, v178

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 530
    :cond_c
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/android/server/ServerThread;->mContentResolver:Landroid/content/ContentResolver;
    :try_end_13
    .catch Ljava/lang/RuntimeException; {:try_start_13 .. :try_end_13} :catch_3

    .line 535
    :try_start_14
    const-string v7, "SystemServer"

    const-string v9, "Account Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    new-instance v71, Lcom/android/server/accounts/AccountManagerService;

    move-object/from16 v0, v71

    invoke-direct {v0, v5}, Lcom/android/server/accounts/AccountManagerService;-><init>(Landroid/content/Context;)V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_14 .. :try_end_14} :catch_3

    .line 537
    .end local v70    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .local v71, "accountManager":Lcom/android/server/accounts/AccountManagerService;
    :try_start_15
    const-string v7, "account"

    move-object/from16 v0, v71

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_8d
    .catch Ljava/lang/RuntimeException; {:try_start_15 .. :try_end_15} :catch_82

    move-object/from16 v70, v71

    .line 543
    .end local v71    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v70    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    :goto_e
    :try_start_16
    const-string v7, "KTT"

    const-string v9, ""

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v7

    if-nez v7, :cond_d

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const-string v9, "android.hardware.nfc"

    invoke-virtual {v7, v9}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z
    :try_end_16
    .catch Ljava/lang/RuntimeException; {:try_start_16 .. :try_end_16} :catch_3

    move-result v7

    if-eqz v7, :cond_d

    .line 546
    :try_start_17
    const-string v7, "SystemServer"

    const-string v9, "KT UCA Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    const-string v7, "ktuca"

    new-instance v9, Landroid/ktuca/KtUcaService;

    invoke-direct {v9, v5}, Landroid/ktuca/KtUcaService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_17} :catch_8
    .catch Ljava/lang/RuntimeException; {:try_start_17 .. :try_end_17} :catch_3

    .line 554
    :cond_d
    :goto_f
    :try_start_18
    const-string v7, "SystemServer"

    const-string v9, "Content Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    const/4 v7, 0x1

    move/from16 v0, v131

    if-ne v0, v7, :cond_4a

    const/4 v7, 0x1

    :goto_10
    invoke-static {v5, v7}, Lcom/android/server/content/ContentService;->main(Landroid/content/Context;Z)Lcom/android/server/content/ContentService;

    move-result-object v102

    .line 560
    new-instance v108, Lcom/android/server/DirEncryptService;

    move-object/from16 v0, v108

    invoke-direct {v0, v5}, Lcom/android/server/DirEncryptService;-><init>(Landroid/content/Context;)V
    :try_end_18
    .catch Ljava/lang/RuntimeException; {:try_start_18 .. :try_end_18} :catch_3

    .line 562
    .end local v107    # "dEncService":Lcom/android/server/DirEncryptService;
    .local v108, "dEncService":Lcom/android/server/DirEncryptService;
    :try_start_19
    sget-boolean v7, Lcom/android/server/ServerThread;->DIR_ENCRYPTION:Z

    if-eqz v7, :cond_e

    .line 563
    const-string v7, "DirEncryptService"

    move-object/from16 v0, v108

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_19} :catch_9
    .catch Ljava/lang/RuntimeException; {:try_start_19 .. :try_end_19} :catch_83

    :cond_e
    move-object/from16 v107, v108

    .line 572
    .end local v108    # "dEncService":Lcom/android/server/DirEncryptService;
    .restart local v107    # "dEncService":Lcom/android/server/DirEncryptService;
    :goto_11
    if-eqz v62, :cond_f

    .line 574
    :try_start_1a
    const-string v7, "SystemServer"

    const-string v9, "Enterprise Container Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    new-instance v101, Lcom/sec/knox/container/EnterpriseContainerService;

    move-object/from16 v0, v101

    invoke-direct {v0, v5}, Lcom/sec/knox/container/EnterpriseContainerService;-><init>(Landroid/content/Context;)V
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1a} :catch_a
    .catch Ljava/lang/RuntimeException; {:try_start_1a .. :try_end_1a} :catch_3

    .line 576
    .end local v100    # "containerService":Lcom/sec/knox/container/EnterpriseContainerService;
    .local v101, "containerService":Lcom/sec/knox/container/EnterpriseContainerService;
    :try_start_1b
    const-string v7, "container_service"

    move-object/from16 v0, v101

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 578
    const-string v7, "SystemServer"

    const-string v9, "Container Service service created..."

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1b} :catch_8c
    .catch Ljava/lang/RuntimeException; {:try_start_1b .. :try_end_1b} :catch_84

    move-object/from16 v100, v101

    .line 587
    .end local v101    # "containerService":Lcom/sec/knox/container/EnterpriseContainerService;
    .restart local v100    # "containerService":Lcom/sec/knox/container/EnterpriseContainerService;
    :cond_f
    :goto_12
    :try_start_1c
    const-string v7, "SystemServer"

    const-string v9, "System Content Providers"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->installSystemProviders()V

    .line 590
    const-string v7, "SystemServer"

    const-string v9, "Lights Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    new-instance v6, Lcom/android/server/LightsService;

    invoke-direct {v6, v5}, Lcom/android/server/LightsService;-><init>(Landroid/content/Context;)V
    :try_end_1c
    .catch Ljava/lang/RuntimeException; {:try_start_1c .. :try_end_1c} :catch_3

    .line 593
    .end local v148    # "lights":Lcom/android/server/LightsService;
    .local v6, "lights":Lcom/android/server/LightsService;
    :try_start_1d
    const-string v7, "SystemServer"

    const-string v9, "Battery Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    new-instance v8, Lcom/android/server/BatteryService;

    invoke-direct {v8, v5, v6}, Lcom/android/server/BatteryService;-><init>(Landroid/content/Context;Lcom/android/server/LightsService;)V
    :try_end_1d
    .catch Ljava/lang/RuntimeException; {:try_start_1d .. :try_end_1d} :catch_85

    .line 595
    .end local v81    # "battery":Lcom/android/server/BatteryService;
    .local v8, "battery":Lcom/android/server/BatteryService;
    :try_start_1e
    const-string v7, "battery"

    invoke-static {v7, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 605
    const-string v7, "SystemServer"

    const-string v9, "Vibrator Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    new-instance v224, Lcom/android/server/VibratorService;

    move-object/from16 v0, v224

    invoke-direct {v0, v5}, Lcom/android/server/VibratorService;-><init>(Landroid/content/Context;)V
    :try_end_1e
    .catch Ljava/lang/RuntimeException; {:try_start_1e .. :try_end_1e} :catch_86

    .line 607
    .end local v223    # "vibrator":Lcom/android/server/VibratorService;
    .local v224, "vibrator":Lcom/android/server/VibratorService;
    :try_start_1f
    const-string/jumbo v7, "vibrator"

    move-object/from16 v0, v224

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 611
    const-string v7, "SystemServer"

    const-string v9, "Tw ToolBox Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    new-instance v211, Lcom/samsung/android/toolbox/TwToolBoxService;

    move-object/from16 v0, v211

    invoke-direct {v0, v5}, Lcom/samsung/android/toolbox/TwToolBoxService;-><init>(Landroid/content/Context;)V

    .line 613
    .local v211, "toolbox":Lcom/samsung/android/toolbox/TwToolBoxService;
    const-string/jumbo v7, "tw_toolbox"

    move-object/from16 v0, v211

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 618
    const-string v7, "SystemServer"

    const-string v9, "SSRM Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1f
    .catch Ljava/lang/RuntimeException; {:try_start_1f .. :try_end_1f} :catch_c

    .line 620
    const/16 v84, 0x0

    .line 621
    .local v84, "cfmsClass":Ljava/lang/Class;
    :try_start_20
    const-string v7, "eng"

    sget-object v9, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4b

    .line 622
    new-instance v89, Ldalvik/system/PathClassLoader;

    const-string v7, "/system/framework/ssrm.jar"

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    move-object/from16 v0, v89

    invoke-direct {v0, v7, v9}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 623
    .local v89, "clsLoader":Ldalvik/system/PathClassLoader;
    const-string v7, "com.android.server.ssrm.CustomFrequencyManagerService"

    move-object/from16 v0, v89

    invoke-virtual {v0, v7}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v84

    .line 627
    .end local v89    # "clsLoader":Ldalvik/system/PathClassLoader;
    :goto_13
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Landroid/content/Context;

    aput-object v10, v7, v9

    const/4 v9, 0x1

    const-class v10, Landroid/app/IActivityManager;

    aput-object v10, v7, v9

    move-object/from16 v0, v84

    invoke-virtual {v0, v7}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v85

    .line 628
    .local v85, "cfmsConstructor":Ljava/lang/reflect/Constructor;
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v5, v7, v9

    const/4 v9, 0x1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v10

    aput-object v10, v7, v9

    move-object/from16 v0, v85

    invoke-virtual {v0, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v199

    check-cast v199, Landroid/os/IBinder;

    .line 629
    .local v199, "ssrmService":Landroid/os/IBinder;
    const-string v7, "CustomFrequencyManagerService"

    move-object/from16 v0, v199

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_b
    .catch Ljava/lang/RuntimeException; {:try_start_20 .. :try_end_20} :catch_c

    .line 639
    .end local v85    # "cfmsConstructor":Ljava/lang/reflect/Constructor;
    .end local v199    # "ssrmService":Landroid/os/IBinder;
    :goto_14
    :try_start_21
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v9, "screen_mode_automatic_setting"

    const/4 v10, 0x0

    invoke-static {v7, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    const/4 v9, 0x1

    if-ne v7, v9, :cond_4c

    const/16 v79, 0x1

    .line 640
    .local v79, "autoMode":Z
    :goto_15
    if-eqz v79, :cond_4d

    .line 641
    const/16 v193, 0x4

    .line 645
    .local v193, "screenMode":I
    :goto_16
    invoke-static/range {v193 .. v193}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeUserMode(I)Z

    .line 646
    const/4 v7, 0x0

    invoke-static {v7}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeUIMode(I)Z

    .line 648
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x111007b

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 650
    const-string v7, "SystemServer"

    const-string v9, "Adaptive Display Color Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    new-instance v122, Lcom/android/server/AdaptiveDisplayColorService;

    move-object/from16 v0, v122

    invoke-direct {v0, v5}, Lcom/android/server/AdaptiveDisplayColorService;-><init>(Landroid/content/Context;)V

    .end local v121    # "displayColor":Lcom/android/server/AdaptiveDisplayColorService;
    .local v122, "displayColor":Lcom/android/server/AdaptiveDisplayColorService;
    move-object/from16 v121, v122

    .line 655
    .end local v122    # "displayColor":Lcom/android/server/AdaptiveDisplayColorService;
    .restart local v121    # "displayColor":Lcom/android/server/AdaptiveDisplayColorService;
    :cond_10
    const-string v7, "SystemServer"

    const-string v9, "Consumer IR Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    new-instance v99, Lcom/android/server/ConsumerIrService;

    move-object/from16 v0, v99

    invoke-direct {v0, v5}, Lcom/android/server/ConsumerIrService;-><init>(Landroid/content/Context;)V
    :try_end_21
    .catch Ljava/lang/RuntimeException; {:try_start_21 .. :try_end_21} :catch_c

    .line 657
    .end local v98    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .local v99, "consumerIr":Lcom/android/server/ConsumerIrService;
    :try_start_22
    const-string v7, "consumer_ir"

    move-object/from16 v0, v99

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 661
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v9

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/server/am/ActivityManagerService;->getAppOpsService()Lcom/android/internal/app/IAppOpsService;

    move-result-object v10

    invoke-virtual/range {v4 .. v11}, Lcom/android/server/power/PowerManagerService;->init(Landroid/content/Context;Lcom/android/server/LightsService;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/BatteryService;Lcom/android/internal/app/IBatteryStats;Lcom/android/internal/app/IAppOpsService;Lcom/android/server/display/DisplayManagerService;)V

    .line 665
    const-string v7, "SystemServer"

    const-string v9, "Alarm Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    new-instance v16, Lcom/android/server/AlarmManagerService;

    move-object/from16 v0, v16

    invoke-direct {v0, v5}, Lcom/android/server/AlarmManagerService;-><init>(Landroid/content/Context;)V
    :try_end_22
    .catch Ljava/lang/RuntimeException; {:try_start_22 .. :try_end_22} :catch_87

    .line 667
    .end local v72    # "alarm":Lcom/android/server/AlarmManagerService;
    .local v16, "alarm":Lcom/android/server/AlarmManagerService;
    :try_start_23
    const-string v7, "alarm"

    move-object/from16 v0, v16

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 669
    const-string v7, "SystemServer"

    const-string v9, "Init Watchdog"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v12

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v17

    move-object v13, v5

    move-object v14, v8

    move-object v15, v4

    invoke-virtual/range {v12 .. v17}, Lcom/android/server/Watchdog;->init(Landroid/content/Context;Lcom/android/server/BatteryService;Lcom/android/server/power/PowerManagerService;Lcom/android/server/AlarmManagerService;Lcom/android/server/am/ActivityManagerService;)V

    .line 672
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v7

    const-string v9, "WindowManager thread"

    move-object/from16 v0, v21

    invoke-virtual {v7, v0, v9}, Lcom/android/server/Watchdog;->addThread(Landroid/os/Handler;Ljava/lang/String;)V

    .line 674
    const-string v7, "SystemServer"

    const-string v9, "Input Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    new-instance v20, Lcom/android/server/input/InputManagerService;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v0, v5, v1}, Lcom/android/server/input/InputManagerService;-><init>(Landroid/content/Context;Landroid/os/Handler;)V
    :try_end_23
    .catch Ljava/lang/RuntimeException; {:try_start_23 .. :try_end_23} :catch_88

    .line 677
    .end local v142    # "inputManager":Lcom/android/server/input/InputManagerService;
    .local v20, "inputManager":Lcom/android/server/input/InputManagerService;
    :try_start_24
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const-string v9, "com.sec.feature.sensorhub"

    invoke-virtual {v7, v9}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_11

    .line 678
    const-string v7, "SystemServer"

    const-string v9, "Context Aware Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    const-string v7, "context_aware"

    new-instance v9, Landroid/hardware/contextaware/manager/ContextAwareService;

    invoke-direct {v9, v5}, Landroid/hardware/contextaware/manager/ContextAwareService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 681
    :cond_11
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const-string v9, "com.sec.feature.sensorhub"

    invoke-virtual {v7, v9}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_12

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const-string v9, "com.sec.feature.scontext_lite"

    invoke-virtual {v7, v9}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_13

    .line 683
    :cond_12
    const-string v7, "SystemServer"

    const-string v9, "SContext Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    const-string/jumbo v7, "scontext"

    new-instance v9, Landroid/hardware/scontext/SContextService;

    invoke-direct {v9, v5}, Landroid/hardware/scontext/SContextService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 687
    :cond_13
    const-string v7, "SystemServer"

    const-string v9, "Window Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    const/4 v7, 0x1

    move/from16 v0, v131

    if-eq v0, v7, :cond_4e

    const/16 v22, 0x1

    :goto_17
    if-nez v134, :cond_4f

    const/16 v23, 0x1

    :goto_18
    move-object/from16 v17, v5

    move-object/from16 v18, v4

    move-object/from16 v19, v11

    invoke-static/range {v17 .. v24}, Lcom/android/server/wm/WindowManagerService;->main(Landroid/content/Context;Lcom/android/server/power/PowerManagerService;Lcom/android/server/display/DisplayManagerService;Lcom/android/server/input/InputManagerService;Landroid/os/Handler;ZZZ)Lcom/android/server/wm/WindowManagerService;

    move-result-object v233

    .line 691
    const-string/jumbo v7, "window"

    move-object/from16 v0, v233

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 692
    const-string v7, "input"

    move-object/from16 v0, v20

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 694
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    move-object/from16 v0, v233

    invoke-virtual {v7, v0}, Lcom/android/server/am/ActivityManagerService;->setWindowManager(Lcom/android/server/wm/WindowManagerService;)V

    .line 696
    invoke-static {}, Lcom/android/server/am/MultiWindowFacadeService;->self()Lcom/android/server/am/MultiWindowFacadeService;

    move-result-object v7

    move-object/from16 v0, v233

    invoke-virtual {v7, v0}, Lcom/android/server/am/MultiWindowFacadeService;->setWindowManager(Lcom/android/server/wm/WindowManagerService;)V

    .line 699
    invoke-virtual/range {v233 .. v233}, Lcom/android/server/wm/WindowManagerService;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object v7

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Lcom/android/server/input/InputManagerService;->setWindowManagerCallbacks(Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;)V

    .line 700
    invoke-virtual/range {v20 .. v20}, Lcom/android/server/input/InputManagerService;->start()V

    .line 702
    move-object/from16 v0, v233

    invoke-virtual {v11, v0}, Lcom/android/server/display/DisplayManagerService;->setWindowManager(Lcom/android/server/display/DisplayManagerService$WindowManagerFuncs;)V

    .line 703
    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Lcom/android/server/display/DisplayManagerService;->setInputManager(Lcom/android/server/display/DisplayManagerService$InputManagerFuncs;)V

    .line 708
    const-string v7, "ro.kernel.qemu"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v9, "1"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_50

    .line 709
    const-string v7, "SystemServer"

    const-string v9, "No Bluetooh Service (emulator)"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    :goto_19
    const-string v7, "2.0"

    const-string/jumbo v9, "version"

    move-object/from16 v0, v222

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_14

    .line 731
    const-string v7, "SystemServer"

    const-string v9, "RCP Manager Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_24
    .catch Ljava/lang/RuntimeException; {:try_start_24 .. :try_end_24} :catch_d

    .line 733
    :try_start_25
    new-instance v186, Lcom/android/server/RCPManagerService;

    move-object/from16 v0, v186

    invoke-direct {v0, v5}, Lcom/android/server/RCPManagerService;-><init>(Landroid/content/Context;)V
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_25} :catch_e
    .catch Ljava/lang/RuntimeException; {:try_start_25 .. :try_end_25} :catch_d

    .line 734
    .end local v185    # "rcpManagerService":Lcom/android/server/RCPManagerService;
    .local v186, "rcpManagerService":Lcom/android/server/RCPManagerService;
    :try_start_26
    const-string v7, "rcp"

    move-object/from16 v0, v186

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_26} :catch_8b
    .catch Ljava/lang/RuntimeException; {:try_start_26 .. :try_end_26} :catch_8a

    move-object/from16 v185, v186

    .end local v186    # "rcpManagerService":Lcom/android/server/RCPManagerService;
    .restart local v185    # "rcpManagerService":Lcom/android/server/RCPManagerService;
    :cond_14
    :goto_1a
    move-object/from16 v98, v99

    .end local v99    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v98    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v223, v224

    .line 745
    .end local v79    # "autoMode":Z
    .end local v84    # "cfmsClass":Ljava/lang/Class;
    .end local v106    # "cryptState":Ljava/lang/String;
    .end local v147    # "knoxVerInfo":Landroid/os/Bundle;
    .end local v193    # "screenMode":I
    .end local v205    # "timaEnabled":Z
    .end local v211    # "toolbox":Lcom/samsung/android/toolbox/TwToolBoxService;
    .end local v222    # "versionInfo":Landroid/os/Bundle;
    .end local v224    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v223    # "vibrator":Lcom/android/server/VibratorService;
    :goto_1b
    const/16 v110, 0x0

    .line 747
    .local v110, "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    const/16 v129, 0x0

    .line 749
    .local v129, "enterprisePolicy":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    const/16 v201, 0x0

    .line 750
    .local v201, "statusBar":Lcom/android/server/StatusBarManagerService;
    const/16 v140, 0x0

    .line 751
    .local v140, "imm":Lcom/android/server/InputMethodManagerService;
    const/16 v74, 0x0

    .line 752
    .local v74, "appWidget":Lcom/android/server/AppWidgetService;
    const/16 v173, 0x0

    .line 753
    .local v173, "notification":Lcom/android/server/NotificationManagerService;
    const/16 v226, 0x0

    .line 754
    .local v226, "wallpaper":Lcom/android/server/WallpaperManagerService;
    const/16 v149, 0x0

    .line 755
    .local v149, "location":Lcom/android/server/LocationManagerService;
    const/16 v191, 0x0

    .line 756
    .local v191, "sLocation":Landroid/os/IBinder;
    const/16 v103, 0x0

    .line 757
    .local v103, "countryDetector":Lcom/android/server/CountryDetectorService;
    const/16 v214, 0x0

    .line 758
    .local v214, "tsms":Lcom/android/server/TextServicesManagerService;
    const/16 v151, 0x0

    .line 759
    .local v151, "lockSettings":Lcom/android/server/LockSettingsService;
    const/16 v125, 0x0

    .line 761
    .local v125, "dreamy":Lcom/android/server/dreams/DreamManagerService;
    const/16 v212, 0x0

    .line 763
    .local v212, "transcloud":Lcom/android/server/TranscloudMonitorService;
    const/16 v77, 0x0

    .line 764
    .local v77, "atlas":Lcom/android/server/AssetAtlasService;
    const/16 v182, 0x0

    .line 765
    .local v182, "printManager":Lcom/android/server/print/PrintManagerService;
    const/16 v156, 0x0

    .line 768
    .local v156, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    const/4 v7, 0x1

    move/from16 v0, v131

    if-eq v0, v7, :cond_15

    .line 772
    :try_start_27
    const-string v7, "SystemServer"

    const-string v9, "Input Method Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    new-instance v141, Lcom/android/server/InputMethodManagerService;

    move-object/from16 v0, v141

    move-object/from16 v1, v233

    invoke-direct {v0, v5, v1}, Lcom/android/server/InputMethodManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_27} :catch_f

    .line 774
    .end local v140    # "imm":Lcom/android/server/InputMethodManagerService;
    .local v141, "imm":Lcom/android/server/InputMethodManagerService;
    :try_start_28
    const-string v7, "input_method"

    move-object/from16 v0, v141

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_28} :catch_7d

    move-object/from16 v140, v141

    .line 780
    .end local v141    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v140    # "imm":Lcom/android/server/InputMethodManagerService;
    :goto_1c
    :try_start_29
    const-string v7, "SystemServer"

    const-string v9, "Accessibility Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    const-string v7, "accessibility"

    new-instance v9, Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {v9, v5}, Lcom/android/server/accessibility/AccessibilityManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_29} :catch_10

    .line 790
    :cond_15
    :goto_1d
    :try_start_2a
    const-string v7, "SystemServer"

    const-string v9, "Window Manager displayReady"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    invoke-virtual/range {v233 .. v233}, Lcom/android/server/wm/WindowManagerService;->displayReady()V
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_2a .. :try_end_2a} :catch_11

    .line 797
    :goto_1e
    :try_start_2b
    const-string v7, "SystemServer"

    const-string v9, "Package Manager performBootDexOpt"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    invoke-interface/range {v179 .. v179}, Landroid/content/pm/IPackageManager;->performBootDexOpt()V
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_2b} :catch_12

    .line 804
    :goto_1f
    :try_start_2c
    const-string v7, "SystemServer"

    const-string v9, "ActivityManagerNative showBootMessage"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v7

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x104069f

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v7, v9, v10}, Landroid/app/IActivityManager;->showBootMessage(Ljava/lang/CharSequence;Z)V
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_2c .. :try_end_2c} :catch_7c

    .line 813
    :goto_20
    if-eqz v62, :cond_16

    .line 815
    if-eqz v100, :cond_16

    :try_start_2d
    invoke-virtual/range {v100 .. v100}, Lcom/sec/knox/container/EnterpriseContainerService;->preSystemReady()V
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_2d} :catch_13

    .line 822
    :cond_16
    :goto_21
    const/4 v7, 0x1

    move/from16 v0, v131

    if-eq v0, v7, :cond_58

    .line 824
    :try_start_2e
    const-string v7, "SystemServer"

    const-string v9, "Device Policy"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    new-instance v111, Lcom/android/server/DevicePolicyManagerService;

    move-object/from16 v0, v111

    invoke-direct {v0, v5}, Lcom/android/server/DevicePolicyManagerService;-><init>(Landroid/content/Context;)V
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_2e} :catch_14

    .line 826
    .end local v110    # "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    .local v111, "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    :try_start_2f
    const-string v7, "device_policy"

    move-object/from16 v0, v111

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_2f .. :try_end_2f} :catch_7b

    move-object/from16 v110, v111

    .line 831
    .end local v111    # "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    .restart local v110    # "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    :goto_22
    if-nez v117, :cond_17

    const-string v7, "0"

    const-string/jumbo v9, "system_init.startmountservice"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_17

    .line 838
    :try_start_30
    const-string v7, "SystemServer"

    const-string v9, "Mount Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    new-instance v163, Lcom/android/server/MountService;

    move-object/from16 v0, v163

    invoke-direct {v0, v5}, Lcom/android/server/MountService;-><init>(Landroid/content/Context;)V
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_30 .. :try_end_30} :catch_15

    .line 840
    .end local v162    # "mountService":Lcom/android/server/MountService;
    .local v163, "mountService":Lcom/android/server/MountService;
    :try_start_31
    const-string v7, "mount"

    move-object/from16 v0, v163

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_31 .. :try_end_31} :catch_7a

    move-object/from16 v162, v163

    .line 848
    .end local v163    # "mountService":Lcom/android/server/MountService;
    .restart local v162    # "mountService":Lcom/android/server/MountService;
    :cond_17
    :goto_23
    :try_start_32
    const-string v7, "SystemServer"

    const-string v9, "DirEncryptSerrvice"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 849
    if-eqz v107, :cond_18

    .line 850
    const-string v7, "SystemServer"

    const-string v9, "DirEncryptService.SystemReady"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    invoke-virtual/range {v107 .. v107}, Lcom/android/server/DirEncryptService;->systemReady()V
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_32} :catch_16

    .line 858
    :cond_18
    :goto_24
    const-string v7, "ro.mds.enable"

    const-string v9, "false"

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v155

    .line 859
    .local v155, "mdsEnable":Ljava/lang/String;
    const-string v7, "SystemServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Intel MDS Service ro.mds.enable = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v155

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    const-string/jumbo v7, "true"

    move-object/from16 v0, v155

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_19

    .line 861
    const/4 v7, 0x2

    new-array v0, v7, [Ljava/lang/Class;

    move-object/from16 v184, v0

    const/4 v7, 0x0

    const-class v9, Landroid/content/Context;

    aput-object v9, v184, v7

    const/4 v7, 0x1

    const-class v9, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    aput-object v9, v184, v7

    .line 863
    .local v184, "ptype":[Ljava/lang/Class;
    const/4 v7, 0x2

    new-array v0, v7, [Ljava/lang/Object;

    move-object/from16 v175, v0

    const/4 v7, 0x0

    aput-object v5, v175, v7

    const/4 v7, 0x1

    aput-object v233, v175, v7

    .line 864
    .local v175, "obj":[Ljava/lang/Object;
    const-string v168, "com.intel.multidisplay.DisplayObserver"

    .line 865
    .local v168, "name":Ljava/lang/String;
    const-string v7, "SystemServer"

    const-string v9, "Intel Display Observer"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    move-object/from16 v0, p0

    move-object/from16 v1, v168

    move-object/from16 v2, v184

    move-object/from16 v3, v175

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/ServerThread;->createServiceWithConstructor(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 869
    .end local v168    # "name":Ljava/lang/String;
    .end local v175    # "obj":[Ljava/lang/Object;
    .end local v184    # "ptype":[Ljava/lang/Class;
    :cond_19
    if-nez v116, :cond_1b

    .line 871
    :try_start_33
    const-string v7, "SystemServer"

    const-string v9, "LockSettingsService"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    new-instance v152, Lcom/android/server/LockSettingsService;

    move-object/from16 v0, v152

    invoke-direct {v0, v5}, Lcom/android/server/LockSettingsService;-><init>(Landroid/content/Context;)V
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_33 .. :try_end_33} :catch_17

    .line 873
    .end local v151    # "lockSettings":Lcom/android/server/LockSettingsService;
    .local v152, "lockSettings":Lcom/android/server/LockSettingsService;
    :try_start_34
    const-string v7, "lock_settings"

    move-object/from16 v0, v152

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_34 .. :try_end_34} :catch_79

    move-object/from16 v151, v152

    .line 887
    .end local v152    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v151    # "lockSettings":Lcom/android/server/LockSettingsService;
    :goto_25
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v222

    .line 888
    .restart local v222    # "versionInfo":Landroid/os/Bundle;
    const-string v7, "2.0"

    const-string/jumbo v9, "version"

    move-object/from16 v0, v222

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1a

    .line 890
    :try_start_35
    invoke-virtual/range {v178 .. v178}, Lcom/android/server/pm/PersonaManagerService;->preSystemReady()V
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_35 .. :try_end_35} :catch_18

    .line 899
    :cond_1a
    :goto_26
    :try_start_36
    const-string v7, "SystemServer"

    const-string v9, "Enterprise Policy"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    new-instance v130, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    move-object/from16 v0, v179

    check-cast v0, Lcom/android/server/pm/PackageManagerService;

    move-object v7, v0

    move-object/from16 v0, v130

    move-object/from16 v1, v110

    invoke-direct {v0, v5, v7, v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;-><init>(Landroid/content/Context;Landroid/content/pm/IPackageManager;Landroid/app/admin/IDevicePolicyManager;)V
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_36 .. :try_end_36} :catch_19

    .line 901
    .end local v129    # "enterprisePolicy":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .local v130, "enterprisePolicy":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    :try_start_37
    const-string v7, "enterprise_policy"

    move-object/from16 v0, v130

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 902
    const-string v7, "SystemServer"

    const-string v9, "Enterprise Policymanager service created..."

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_37 .. :try_end_37} :catch_78

    move-object/from16 v129, v130

    .line 911
    .end local v130    # "enterprisePolicy":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .end local v222    # "versionInfo":Landroid/os/Bundle;
    .restart local v129    # "enterprisePolicy":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    :cond_1b
    :goto_27
    :try_start_38
    const-string v7, "SystemServer"

    const-string v9, "HarmonyEAS service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 912
    new-instance v154, Lcom/android/server/HarmonyEASService;

    move-object/from16 v0, v154

    invoke-direct {v0, v5}, Lcom/android/server/HarmonyEASService;-><init>(Landroid/content/Context;)V
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_38 .. :try_end_38} :catch_1a

    .line 913
    .end local v153    # "mHMS":Lcom/android/server/HarmonyEASService;
    .local v154, "mHMS":Lcom/android/server/HarmonyEASService;
    :try_start_39
    const-string v7, "harmony_eas_service"

    move-object/from16 v0, v154

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 914
    const-string v7, "SystemServer"

    const-string v9, "Harmony EAS service created..."

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_39
    .catch Ljava/lang/Throwable; {:try_start_39 .. :try_end_39} :catch_77

    move-object/from16 v153, v154

    .line 920
    .end local v154    # "mHMS":Lcom/android/server/HarmonyEASService;
    .restart local v153    # "mHMS":Lcom/android/server/HarmonyEASService;
    :goto_28
    if-nez v118, :cond_1c

    .line 922
    :try_start_3a
    const-string v7, "SystemServer"

    const-string v9, "Status Bar"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 923
    new-instance v202, Lcom/android/server/StatusBarManagerService;

    move-object/from16 v0, v202

    move-object/from16 v1, v233

    invoke-direct {v0, v5, v1}, Lcom/android/server/StatusBarManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_3a
    .catch Ljava/lang/Throwable; {:try_start_3a .. :try_end_3a} :catch_1b

    .line 924
    .end local v201    # "statusBar":Lcom/android/server/StatusBarManagerService;
    .local v202, "statusBar":Lcom/android/server/StatusBarManagerService;
    :try_start_3b
    const-string/jumbo v7, "statusbar"

    move-object/from16 v0, v202

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3b
    .catch Ljava/lang/Throwable; {:try_start_3b .. :try_end_3b} :catch_76

    move-object/from16 v201, v202

    .line 930
    .end local v202    # "statusBar":Lcom/android/server/StatusBarManagerService;
    .restart local v201    # "statusBar":Lcom/android/server/StatusBarManagerService;
    :cond_1c
    :goto_29
    if-nez v116, :cond_1d

    .line 932
    :try_start_3c
    const-string v7, "SystemServer"

    const-string v9, "Clipboard Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 933
    const-string v7, "clipboard"

    new-instance v9, Lcom/android/server/ClipboardService;

    invoke-direct {v9, v5}, Lcom/android/server/ClipboardService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3c
    .catch Ljava/lang/Throwable; {:try_start_3c .. :try_end_3c} :catch_1c

    .line 945
    :cond_1d
    :goto_2a
    :try_start_3d
    const-string v7, "SystemServer"

    const-string v9, "ClipboardEx Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 946
    const-string v7, "clipboardEx"

    new-instance v9, Lcom/android/server/sec/InternalClipboardExService;

    invoke-direct {v9, v5}, Lcom/android/server/sec/InternalClipboardExService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3d
    .catch Ljava/lang/Throwable; {:try_start_3d .. :try_end_3d} :catch_1d

    .line 952
    :goto_2b
    if-nez v115, :cond_1e

    .line 954
    :try_start_3e
    const-string v7, "SystemServer"

    const-string v9, "NetworkManagement Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 955
    invoke-static {v5}, Lcom/android/server/NetworkManagementService;->create(Landroid/content/Context;)Lcom/android/server/NetworkManagementService;

    move-result-object v30

    .line 956
    const-string v7, "network_management"

    move-object/from16 v0, v30

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3e
    .catch Ljava/lang/Throwable; {:try_start_3e .. :try_end_3e} :catch_1e

    .line 962
    :cond_1e
    :goto_2c
    if-nez v116, :cond_1f

    .line 964
    :try_start_3f
    const-string v7, "SystemServer"

    const-string v9, "Text Service Manager Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 965
    new-instance v215, Lcom/android/server/TextServicesManagerService;

    move-object/from16 v0, v215

    invoke-direct {v0, v5}, Lcom/android/server/TextServicesManagerService;-><init>(Landroid/content/Context;)V
    :try_end_3f
    .catch Ljava/lang/Throwable; {:try_start_3f .. :try_end_3f} :catch_1f

    .line 966
    .end local v214    # "tsms":Lcom/android/server/TextServicesManagerService;
    .local v215, "tsms":Lcom/android/server/TextServicesManagerService;
    :try_start_40
    const-string/jumbo v7, "textservices"

    move-object/from16 v0, v215

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_40
    .catch Ljava/lang/Throwable; {:try_start_40 .. :try_end_40} :catch_75

    move-object/from16 v214, v215

    .line 972
    .end local v215    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v214    # "tsms":Lcom/android/server/TextServicesManagerService;
    :cond_1f
    :goto_2d
    if-nez v115, :cond_57

    .line 974
    :try_start_41
    const-string v7, "SystemServer"

    const-string v9, "NetworkStats Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 975
    new-instance v170, Lcom/android/server/net/NetworkStatsService;

    move-object/from16 v0, v170

    move-object/from16 v1, v30

    move-object/from16 v2, v16

    invoke-direct {v0, v5, v1, v2}, Lcom/android/server/net/NetworkStatsService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/app/IAlarmManager;)V
    :try_end_41
    .catch Ljava/lang/Throwable; {:try_start_41 .. :try_end_41} :catch_20

    .line 976
    .end local v29    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .local v170, "networkStats":Lcom/android/server/net/NetworkStatsService;
    :try_start_42
    const-string v7, "netstats"

    move-object/from16 v0, v170

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_42
    .catch Ljava/lang/Throwable; {:try_start_42 .. :try_end_42} :catch_74

    move-object/from16 v29, v170

    .line 982
    .end local v170    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .restart local v29    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    :goto_2e
    :try_start_43
    const-string v7, "SystemServer"

    const-string v9, "NetworkPolicy Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 983
    new-instance v25, Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v27

    move-object/from16 v26, v5

    move-object/from16 v28, v4

    invoke-direct/range {v25 .. v30}, Lcom/android/server/net/NetworkPolicyManagerService;-><init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/os/IPowerManager;Landroid/net/INetworkStatsService;Landroid/os/INetworkManagementService;)V
    :try_end_43
    .catch Ljava/lang/Throwable; {:try_start_43 .. :try_end_43} :catch_21

    .line 986
    .end local v169    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .local v25, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    :try_start_44
    const-string v7, "netpolicy"

    move-object/from16 v0, v25

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_44
    .catch Ljava/lang/Throwable; {:try_start_44 .. :try_end_44} :catch_73

    .line 992
    :goto_2f
    :try_start_45
    const-string v7, "SystemServer"

    const-string v9, "Wi-Fi P2pService"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    new-instance v232, Landroid/net/wifi/p2p/WifiP2pService;

    move-object/from16 v0, v232

    invoke-direct {v0, v5}, Landroid/net/wifi/p2p/WifiP2pService;-><init>(Landroid/content/Context;)V
    :try_end_45
    .catch Ljava/lang/Throwable; {:try_start_45 .. :try_end_45} :catch_22

    .line 994
    .end local v231    # "wifiP2p":Landroid/net/wifi/p2p/WifiP2pService;
    .local v232, "wifiP2p":Landroid/net/wifi/p2p/WifiP2pService;
    :try_start_46
    const-string/jumbo v7, "wifip2p"

    move-object/from16 v0, v232

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_46
    .catch Ljava/lang/Throwable; {:try_start_46 .. :try_end_46} :catch_72

    move-object/from16 v231, v232

    .line 1000
    .end local v232    # "wifiP2p":Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v231    # "wifiP2p":Landroid/net/wifi/p2p/WifiP2pService;
    :goto_30
    :try_start_47
    const-string v7, "SystemServer"

    const-string v9, "Wi-Fi Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1001
    new-instance v229, Lcom/android/server/wifi/WifiService;

    move-object/from16 v0, v229

    invoke-direct {v0, v5}, Lcom/android/server/wifi/WifiService;-><init>(Landroid/content/Context;)V
    :try_end_47
    .catch Ljava/lang/Throwable; {:try_start_47 .. :try_end_47} :catch_23

    .line 1002
    .end local v228    # "wifi":Lcom/android/server/wifi/WifiService;
    .local v229, "wifi":Lcom/android/server/wifi/WifiService;
    :try_start_48
    const-string/jumbo v7, "wifi"

    move-object/from16 v0, v229

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_48
    .catch Ljava/lang/Throwable; {:try_start_48 .. :try_end_48} :catch_71

    move-object/from16 v228, v229

    .line 1009
    .end local v229    # "wifi":Lcom/android/server/wifi/WifiService;
    .restart local v228    # "wifi":Lcom/android/server/wifi/WifiService;
    :goto_31
    :try_start_49
    const-string v7, "SystemServer"

    const-string v9, "MSAP Wi-Fi Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1010
    new-instance v165, Lcom/android/server/MsapWifiService;

    move-object/from16 v0, v165

    invoke-direct {v0, v5}, Lcom/android/server/MsapWifiService;-><init>(Landroid/content/Context;)V
    :try_end_49
    .catch Ljava/lang/Throwable; {:try_start_49 .. :try_end_49} :catch_24

    .line 1011
    .end local v164    # "msapwifi":Lcom/android/server/MsapWifiService;
    .local v165, "msapwifi":Lcom/android/server/MsapWifiService;
    :try_start_4a
    const-string v7, "msapwifi"

    move-object/from16 v0, v165

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4a
    .catch Ljava/lang/Throwable; {:try_start_4a .. :try_end_4a} :catch_70

    move-object/from16 v164, v165

    .line 1018
    .end local v165    # "msapwifi":Lcom/android/server/MsapWifiService;
    .restart local v164    # "msapwifi":Lcom/android/server/MsapWifiService;
    :goto_32
    :try_start_4b
    const-string v7, "SystemServer"

    const-string v9, "Connectivity Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1019
    new-instance v95, Lcom/android/server/ConnectivityService;

    move-object/from16 v0, v95

    move-object/from16 v1, v30

    move-object/from16 v2, v29

    move-object/from16 v3, v25

    invoke-direct {v0, v5, v1, v2, v3}, Lcom/android/server/ConnectivityService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/net/INetworkPolicyManager;)V
    :try_end_4b
    .catch Ljava/lang/Throwable; {:try_start_4b .. :try_end_4b} :catch_25

    .line 1021
    .end local v94    # "connectivity":Lcom/android/server/ConnectivityService;
    .local v95, "connectivity":Lcom/android/server/ConnectivityService;
    :try_start_4c
    const-string v7, "connectivity"

    move-object/from16 v0, v95

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1022
    move-object/from16 v0, v29

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Lcom/android/server/net/NetworkStatsService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V

    .line 1023
    move-object/from16 v0, v25

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V

    .line 1025
    invoke-virtual/range {v231 .. v231}, Landroid/net/wifi/p2p/WifiP2pService;->connectivityServiceReady()V

    .line 1026
    invoke-virtual/range {v228 .. v228}, Lcom/android/server/wifi/WifiService;->checkAndStartWifi()V
    :try_end_4c
    .catch Ljava/lang/Throwable; {:try_start_4c .. :try_end_4c} :catch_6f

    move-object/from16 v94, v95

    .line 1075
    .end local v95    # "connectivity":Lcom/android/server/ConnectivityService;
    .restart local v94    # "connectivity":Lcom/android/server/ConnectivityService;
    :goto_33
    :try_start_4d
    const-string v7, "SystemServer"

    const-string v9, "Network Service Discovery Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1076
    invoke-static {v5}, Lcom/android/server/NsdService;->create(Landroid/content/Context;)Lcom/android/server/NsdService;

    move-result-object v196

    .line 1077
    const-string/jumbo v7, "servicediscovery"

    move-object/from16 v0, v196

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4d
    .catch Ljava/lang/Throwable; {:try_start_4d .. :try_end_4d} :catch_26

    .line 1084
    :goto_34
    if-nez v116, :cond_20

    .line 1086
    :try_start_4e
    const-string v7, "SystemServer"

    const-string v9, "UpdateLock Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1087
    const-string/jumbo v7, "updatelock"

    new-instance v9, Lcom/android/server/UpdateLockService;

    invoke-direct {v9, v5}, Lcom/android/server/UpdateLockService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4e
    .catch Ljava/lang/Throwable; {:try_start_4e .. :try_end_4e} :catch_27

    .line 1099
    :cond_20
    :goto_35
    if-eqz v162, :cond_21

    if-nez v24, :cond_21

    .line 1101
    const-string/jumbo v7, "vold.decrypt"

    const-string v9, "null"

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v9, "trigger_restart_min_framework"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_21

    .line 1102
    invoke-virtual/range {v162 .. v162}, Lcom/android/server/MountService;->waitForAsecScan()V

    .line 1106
    :cond_21
    if-eqz v70, :cond_22

    .line 1107
    :try_start_4f
    const-string v7, "SystemServer"

    const-string v9, "accountManager systemReady"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1108
    invoke-virtual/range {v70 .. v70}, Lcom/android/server/accounts/AccountManagerService;->systemReady()V
    :try_end_4f
    .catch Ljava/lang/Throwable; {:try_start_4f .. :try_end_4f} :catch_28

    .line 1115
    :cond_22
    :goto_36
    if-eqz v102, :cond_23

    .line 1116
    :try_start_50
    const-string v7, "SystemServer"

    const-string v9, "contentService systemReady"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1117
    invoke-virtual/range {v102 .. v102}, Lcom/android/server/content/ContentService;->systemReady()V
    :try_end_50
    .catch Ljava/lang/Throwable; {:try_start_50 .. :try_end_50} :catch_29

    .line 1124
    :cond_23
    :goto_37
    :try_start_51
    const-string v7, "SystemServer"

    const-string v9, "Notification Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1125
    new-instance v174, Lcom/android/server/NotificationManagerService;

    move-object/from16 v0, v174

    move-object/from16 v1, v201

    invoke-direct {v0, v5, v1, v6}, Lcom/android/server/NotificationManagerService;-><init>(Landroid/content/Context;Lcom/android/server/StatusBarManagerService;Lcom/android/server/LightsService;)V
    :try_end_51
    .catch Ljava/lang/Throwable; {:try_start_51 .. :try_end_51} :catch_2a

    .line 1126
    .end local v173    # "notification":Lcom/android/server/NotificationManagerService;
    .local v174, "notification":Lcom/android/server/NotificationManagerService;
    :try_start_52
    const-string v7, "notification"

    move-object/from16 v0, v174

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1127
    move-object/from16 v0, v25

    move-object/from16 v1, v174

    invoke-virtual {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->bindNotificationManager(Landroid/app/INotificationManager;)V
    :try_end_52
    .catch Ljava/lang/Throwable; {:try_start_52 .. :try_end_52} :catch_6e

    move-object/from16 v173, v174

    .line 1133
    .end local v174    # "notification":Lcom/android/server/NotificationManagerService;
    .restart local v173    # "notification":Lcom/android/server/NotificationManagerService;
    :goto_38
    :try_start_53
    const-string v7, "SystemServer"

    const-string v9, "Device Storage Monitor"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1134
    const-string v7, "devicestoragemonitor"

    new-instance v9, Lcom/android/server/DeviceStorageMonitorService;

    invoke-direct {v9, v5}, Lcom/android/server/DeviceStorageMonitorService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_53
    .catch Ljava/lang/Throwable; {:try_start_53 .. :try_end_53} :catch_2b

    .line 1140
    :goto_39
    if-nez v113, :cond_24

    .line 1142
    :try_start_54
    const-string v7, "SystemServer"

    const-string v9, "Location Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1143
    new-instance v150, Lcom/android/server/LocationManagerService;

    move-object/from16 v0, v150

    invoke-direct {v0, v5}, Lcom/android/server/LocationManagerService;-><init>(Landroid/content/Context;)V
    :try_end_54
    .catch Ljava/lang/Throwable; {:try_start_54 .. :try_end_54} :catch_2c

    .line 1144
    .end local v149    # "location":Lcom/android/server/LocationManagerService;
    .local v150, "location":Lcom/android/server/LocationManagerService;
    :try_start_55
    const-string v7, "location"

    move-object/from16 v0, v150

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_55
    .catch Ljava/lang/Throwable; {:try_start_55 .. :try_end_55} :catch_6d

    move-object/from16 v149, v150

    .line 1150
    .end local v150    # "location":Lcom/android/server/LocationManagerService;
    .restart local v149    # "location":Lcom/android/server/LocationManagerService;
    :goto_3a
    :try_start_56
    const-string v7, "SystemServer"

    const-string v9, "Country Detector"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1151
    new-instance v104, Lcom/android/server/CountryDetectorService;

    move-object/from16 v0, v104

    invoke-direct {v0, v5}, Lcom/android/server/CountryDetectorService;-><init>(Landroid/content/Context;)V
    :try_end_56
    .catch Ljava/lang/Throwable; {:try_start_56 .. :try_end_56} :catch_2d

    .line 1152
    .end local v103    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .local v104, "countryDetector":Lcom/android/server/CountryDetectorService;
    :try_start_57
    const-string v7, "country_detector"

    move-object/from16 v0, v104

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_57
    .catch Ljava/lang/Throwable; {:try_start_57 .. :try_end_57} :catch_6c

    move-object/from16 v103, v104

    .line 1190
    .end local v104    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v103    # "countryDetector":Lcom/android/server/CountryDetectorService;
    :cond_24
    :goto_3b
    :try_start_58
    const-string v7, "SystemServer"

    const-string v9, "SLocation Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1191
    const-string v7, "com.samsung.location.SLocationLoader"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v192

    .line 1192
    .local v192, "sLocationLoader":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v7, "getSLocationService"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Class;

    const/4 v10, 0x0

    const-class v12, Landroid/content/Context;

    aput-object v12, v9, v10

    move-object/from16 v0, v192

    invoke-virtual {v0, v7, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v135

    .line 1193
    .local v135, "getSLocationService":Ljava/lang/reflect/Method;
    const/4 v7, 0x0

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v5, v9, v10

    move-object/from16 v0, v135

    invoke-virtual {v0, v7, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Landroid/os/IBinder;

    move-object/from16 v191, v0

    .line 1194
    const-string/jumbo v7, "sec_location"

    move-object/from16 v0, v191

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1195
    const-string v7, "SystemServer"

    const-string v9, "Loading SLocationService has been completed."

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_58
    .catch Ljava/lang/Throwable; {:try_start_58 .. :try_end_58} :catch_2e

    .line 1200
    .end local v135    # "getSLocationService":Ljava/lang/reflect/Method;
    .end local v192    # "sLocationLoader":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_3c
    if-nez v116, :cond_25

    .line 1202
    :try_start_59
    const-string v7, "SystemServer"

    const-string v9, "Search Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1203
    const-string/jumbo v7, "search"

    new-instance v9, Lcom/android/server/search/SearchManagerService;

    invoke-direct {v9, v5}, Lcom/android/server/search/SearchManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_59
    .catch Ljava/lang/Throwable; {:try_start_59 .. :try_end_59} :catch_2f

    .line 1211
    :cond_25
    :goto_3d
    :try_start_5a
    const-string v7, "com.sec.feature.spell_manager_service"

    move-object/from16 v0, v179

    invoke-interface {v0, v7}, Landroid/content/pm/IPackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_54

    .line 1212
    const-string v7, "SystemServer"

    const-string v9, "Spell Manager Service starting..."

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1213
    const-string/jumbo v7, "spell"

    new-instance v9, Landroid/server/spell/SpellManagerService;

    invoke-direct {v9, v5}, Landroid/server/spell/SpellManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_5a
    .catch Ljava/lang/Throwable; {:try_start_5a .. :try_end_5a} :catch_30

    .line 1223
    :goto_3e
    :try_start_5b
    const-string v7, "SystemServer"

    const-string v9, "DropBox Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1224
    const-string v7, "dropbox"

    new-instance v9, Lcom/android/server/DropBoxManagerService;

    new-instance v10, Ljava/io/File;

    const-string v12, "/data/system/dropbox"

    invoke-direct {v10, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v9, v5, v10}, Lcom/android/server/DropBoxManagerService;-><init>(Landroid/content/Context;Ljava/io/File;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_5b
    .catch Ljava/lang/Throwable; {:try_start_5b .. :try_end_5b} :catch_31

    .line 1230
    :goto_3f
    if-nez v116, :cond_26

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x1110033

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    if-eqz v7, :cond_26

    .line 1233
    :try_start_5c
    const-string v7, "SystemServer"

    const-string v9, "Wallpaper Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1234
    if-nez v33, :cond_26

    .line 1235
    new-instance v227, Lcom/android/server/WallpaperManagerService;

    move-object/from16 v0, v227

    invoke-direct {v0, v5}, Lcom/android/server/WallpaperManagerService;-><init>(Landroid/content/Context;)V
    :try_end_5c
    .catch Ljava/lang/Throwable; {:try_start_5c .. :try_end_5c} :catch_32

    .line 1236
    .end local v226    # "wallpaper":Lcom/android/server/WallpaperManagerService;
    .local v227, "wallpaper":Lcom/android/server/WallpaperManagerService;
    :try_start_5d
    const-string/jumbo v7, "wallpaper"

    move-object/from16 v0, v227

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_5d
    .catch Ljava/lang/Throwable; {:try_start_5d .. :try_end_5d} :catch_6b

    move-object/from16 v226, v227

    .line 1243
    .end local v227    # "wallpaper":Lcom/android/server/WallpaperManagerService;
    .restart local v226    # "wallpaper":Lcom/android/server/WallpaperManagerService;
    :cond_26
    :goto_40
    if-nez v114, :cond_27

    const-string v7, "0"

    const-string/jumbo v9, "system_init.startaudioservice"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_27

    .line 1245
    :try_start_5e
    const-string v7, "SystemServer"

    const-string v9, "Audio Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1246
    const-string v7, "audio"

    new-instance v9, Landroid/media/AudioService;

    invoke-direct {v9, v5}, Landroid/media/AudioService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_5e
    .catch Ljava/lang/Throwable; {:try_start_5e .. :try_end_5e} :catch_33

    .line 1251
    :cond_27
    :goto_41
    if-nez v116, :cond_28

    .line 1253
    :try_start_5f
    const-string v7, "SystemServer"

    const-string v9, "Dock Observer"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1255
    new-instance v124, Lcom/android/server/DockObserver;

    move-object/from16 v0, v124

    invoke-direct {v0, v5}, Lcom/android/server/DockObserver;-><init>(Landroid/content/Context;)V
    :try_end_5f
    .catch Ljava/lang/Throwable; {:try_start_5f .. :try_end_5f} :catch_34

    .end local v123    # "dock":Lcom/android/server/DockObserver;
    .local v124, "dock":Lcom/android/server/DockObserver;
    move-object/from16 v123, v124

    .line 1261
    .end local v124    # "dock":Lcom/android/server/DockObserver;
    .restart local v123    # "dock":Lcom/android/server/DockObserver;
    :cond_28
    :goto_42
    if-nez v114, :cond_29

    .line 1263
    :try_start_60
    const-string v7, "SystemServer"

    const-string v9, "Wired Accessory Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1265
    new-instance v7, Lcom/android/server/WiredAccessoryManager;

    move-object/from16 v0, v20

    invoke-direct {v7, v5, v0}, Lcom/android/server/WiredAccessoryManager;-><init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Lcom/android/server/input/InputManagerService;->setWiredAccessoryCallbacks(Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;)V
    :try_end_60
    .catch Ljava/lang/Throwable; {:try_start_60 .. :try_end_60} :catch_35

    .line 1272
    :cond_29
    :goto_43
    if-nez v116, :cond_2a

    .line 1274
    :try_start_61
    const-string v7, "SystemServer"

    const-string v9, "USB Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1276
    new-instance v221, Lcom/android/server/usb/UsbService;

    move-object/from16 v0, v221

    invoke-direct {v0, v5}, Lcom/android/server/usb/UsbService;-><init>(Landroid/content/Context;)V
    :try_end_61
    .catch Ljava/lang/Throwable; {:try_start_61 .. :try_end_61} :catch_36

    .line 1277
    .end local v220    # "usb":Lcom/android/server/usb/UsbService;
    .local v221, "usb":Lcom/android/server/usb/UsbService;
    :try_start_62
    const-string/jumbo v7, "usb"

    move-object/from16 v0, v221

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_62
    .catch Ljava/lang/Throwable; {:try_start_62 .. :try_end_62} :catch_6a

    move-object/from16 v220, v221

    .line 1283
    .end local v221    # "usb":Lcom/android/server/usb/UsbService;
    .restart local v220    # "usb":Lcom/android/server/usb/UsbService;
    :goto_44
    :try_start_63
    const-string v7, "SystemServer"

    const-string v9, "Serial Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1285
    new-instance v195, Lcom/android/server/SerialService;

    move-object/from16 v0, v195

    invoke-direct {v0, v5}, Lcom/android/server/SerialService;-><init>(Landroid/content/Context;)V
    :try_end_63
    .catch Ljava/lang/Throwable; {:try_start_63 .. :try_end_63} :catch_37

    .line 1286
    .end local v194    # "serial":Lcom/android/server/SerialService;
    .local v195, "serial":Lcom/android/server/SerialService;
    :try_start_64
    const-string/jumbo v7, "serial"

    move-object/from16 v0, v195

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_64
    .catch Ljava/lang/Throwable; {:try_start_64 .. :try_end_64} :catch_69

    move-object/from16 v194, v195

    .line 1293
    .end local v195    # "serial":Lcom/android/server/SerialService;
    .restart local v194    # "serial":Lcom/android/server/SerialService;
    :cond_2a
    :goto_45
    :try_start_65
    const-string v7, "SystemServer"

    const-string v9, "Twilight Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1294
    new-instance v217, Lcom/android/server/TwilightService;

    move-object/from16 v0, v217

    invoke-direct {v0, v5}, Lcom/android/server/TwilightService;-><init>(Landroid/content/Context;)V
    :try_end_65
    .catch Ljava/lang/Throwable; {:try_start_65 .. :try_end_65} :catch_38

    .end local v216    # "twilight":Lcom/android/server/TwilightService;
    .local v217, "twilight":Lcom/android/server/TwilightService;
    move-object/from16 v216, v217

    .line 1300
    .end local v217    # "twilight":Lcom/android/server/TwilightService;
    .restart local v216    # "twilight":Lcom/android/server/TwilightService;
    :goto_46
    :try_start_66
    const-string v7, "SystemServer"

    const-string v9, "UI Mode Manager Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1302
    new-instance v219, Lcom/android/server/UiModeManagerService;

    move-object/from16 v0, v219

    move-object/from16 v1, v216

    invoke-direct {v0, v5, v1}, Lcom/android/server/UiModeManagerService;-><init>(Landroid/content/Context;Lcom/android/server/TwilightService;)V
    :try_end_66
    .catch Ljava/lang/Throwable; {:try_start_66 .. :try_end_66} :catch_39

    .end local v218    # "uiMode":Lcom/android/server/UiModeManagerService;
    .local v219, "uiMode":Lcom/android/server/UiModeManagerService;
    move-object/from16 v218, v219

    .line 1308
    .end local v219    # "uiMode":Lcom/android/server/UiModeManagerService;
    .restart local v218    # "uiMode":Lcom/android/server/UiModeManagerService;
    :goto_47
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v7

    const-string v9, "CscFeature_Common_EnableSUA"

    invoke-virtual {v7, v9}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2b

    .line 1311
    :try_start_67
    const-string v7, "SystemServer"

    const-string v9, "KiesUsb Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1312
    const-string v7, "kiesusb"

    new-instance v9, Lcom/android/server/KiesConnectivity/KiesUsbObserver;

    invoke-direct {v9, v5}, Lcom/android/server/KiesConnectivity/KiesUsbObserver;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_67
    .catch Ljava/lang/Throwable; {:try_start_67 .. :try_end_67} :catch_3a

    .line 1319
    :cond_2b
    :goto_48
    if-nez v116, :cond_2c

    .line 1321
    :try_start_68
    const-string v7, "SystemServer"

    const-string v9, "Backup Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1322
    const-string v7, "backup"

    new-instance v9, Lcom/android/server/BackupManagerService;

    invoke-direct {v9, v5}, Lcom/android/server/BackupManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_68
    .catch Ljava/lang/Throwable; {:try_start_68 .. :try_end_68} :catch_3b

    .line 1329
    :goto_49
    :try_start_69
    const-string v7, "SystemServer"

    const-string v9, "AppWidget Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1330
    new-instance v75, Lcom/android/server/AppWidgetService;

    move-object/from16 v0, v75

    invoke-direct {v0, v5}, Lcom/android/server/AppWidgetService;-><init>(Landroid/content/Context;)V
    :try_end_69
    .catch Ljava/lang/Throwable; {:try_start_69 .. :try_end_69} :catch_3c

    .line 1331
    .end local v74    # "appWidget":Lcom/android/server/AppWidgetService;
    .local v75, "appWidget":Lcom/android/server/AppWidgetService;
    :try_start_6a
    const-string v7, "appwidget"

    move-object/from16 v0, v75

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_6a
    .catch Ljava/lang/Throwable; {:try_start_6a .. :try_end_6a} :catch_68

    move-object/from16 v74, v75

    .line 1337
    .end local v75    # "appWidget":Lcom/android/server/AppWidgetService;
    .restart local v74    # "appWidget":Lcom/android/server/AppWidgetService;
    :goto_4a
    :try_start_6b
    const-string v7, "SystemServer"

    const-string v9, "Recognition Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1338
    new-instance v190, Lcom/android/server/RecognitionManagerService;

    move-object/from16 v0, v190

    invoke-direct {v0, v5}, Lcom/android/server/RecognitionManagerService;-><init>(Landroid/content/Context;)V
    :try_end_6b
    .catch Ljava/lang/Throwable; {:try_start_6b .. :try_end_6b} :catch_3d

    .end local v189    # "recognition":Lcom/android/server/RecognitionManagerService;
    .local v190, "recognition":Lcom/android/server/RecognitionManagerService;
    move-object/from16 v189, v190

    .line 1343
    .end local v190    # "recognition":Lcom/android/server/RecognitionManagerService;
    .restart local v189    # "recognition":Lcom/android/server/RecognitionManagerService;
    :cond_2c
    :goto_4b
    const-string v7, "ro.SecEDS.enable"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v69

    .line 1345
    .local v69, "SecEDSEnable":Ljava/lang/String;
    const-string v7, "SystemServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SecEDS Service ro.tvout.enable = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v69

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1347
    const-string v7, "false"

    move-object/from16 v0, v69

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2d

    .line 1353
    :try_start_6c
    const-string v7, "SystemServer"

    const-string v9, "Starting SecEDSEnable Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1355
    const/16 v128, 0x0

    .line 1357
    .local v128, "edsclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v7, "com.android.server.SecExternalDisplayService"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v128

    .line 1359
    if-nez v128, :cond_55

    .line 1361
    const-string v7, "SystemServer"

    const-string v9, "eds Service not exist"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6c
    .catch Ljava/lang/Throwable; {:try_start_6c .. :try_end_6c} :catch_3e

    .line 1388
    .end local v128    # "edsclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2d
    :goto_4c
    :try_start_6d
    const-string v7, "SystemServer"

    const-string v9, "DiskStats Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1389
    const-string v7, "diskstats"

    new-instance v9, Lcom/android/server/DiskStatsService;

    invoke-direct {v9, v5}, Lcom/android/server/DiskStatsService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_6d
    .catch Ljava/lang/Throwable; {:try_start_6d .. :try_end_6d} :catch_3f

    .line 1406
    :goto_4d
    :try_start_6e
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v176

    .line 1407
    .local v176, "pM":Landroid/content/pm/PackageManager;
    if-eqz v176, :cond_31

    .line 1408
    const-string v7, "SystemServer"

    const-string v9, "PackageManager is not null!!"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1409
    const/16 v145, 0x0

    .line 1410
    .local v145, "isAddService":Z
    const-string v7, "com.sec.feature.multiwindow"

    move-object/from16 v0, v176

    invoke-virtual {v0, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2e

    .line 1411
    const/16 v145, 0x1

    .line 1413
    :cond_2e
    const-string v7, "com.sec.feature.spen_usp"

    move-object/from16 v0, v176

    invoke-virtual {v0, v7}, Landroid/content/pm/PackageManager;->getSystemFeatureLevel(Ljava/lang/String;)I

    move-result v7

    const/4 v9, 0x2

    if-lt v7, v9, :cond_2f

    .line 1414
    const/16 v145, 0x1

    .line 1416
    :cond_2f
    const-string v7, "com.sec.feature.spen_usp"

    move-object/from16 v0, v176

    invoke-virtual {v0, v7}, Landroid/content/pm/PackageManager;->getSystemFeatureLevel(Ljava/lang/String;)I

    move-result v7

    const/4 v9, 0x1

    if-ne v7, v9, :cond_30

    .line 1417
    const/16 v145, 0x0

    .line 1419
    :cond_30
    if-eqz v145, :cond_31

    .line 1420
    const-string v7, "SystemServer"

    const-string v9, "SpenGestureManagerService enable"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1421
    const-string/jumbo v7, "spengestureservice"

    new-instance v9, Lcom/android/server/smartclip/SpenGestureManagerService;

    move-object/from16 v0, v233

    invoke-direct {v9, v5, v0}, Lcom/android/server/smartclip/SpenGestureManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_6e
    .catch Ljava/lang/Throwable; {:try_start_6e .. :try_end_6e} :catch_40

    .line 1430
    .end local v145    # "isAddService":Z
    .end local v176    # "pM":Landroid/content/pm/PackageManager;
    :cond_31
    :goto_4e
    :try_start_6f
    const-string v7, "SystemServer"

    const-string v9, "Palm Motion Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1431
    const-string v7, "palmmotionservice"

    new-instance v9, Lcom/android/server/palmMotion/PalmMotionService;

    move-object/from16 v0, v20

    invoke-direct {v9, v5, v0}, Lcom/android/server/palmMotion/PalmMotionService;-><init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_6f
    .catch Ljava/lang/Throwable; {:try_start_6f .. :try_end_6f} :catch_41

    .line 1440
    :goto_4f
    :try_start_70
    const-string v7, "SystemServer"

    const-string v9, "MagazineCard Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1441
    const-string v7, "magazinecardservice"

    new-instance v9, Lcom/android/server/magazinecard/MagazineCardManagerService;

    move-object/from16 v0, v233

    invoke-direct {v9, v5, v0}, Lcom/android/server/magazinecard/MagazineCardManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_70
    .catch Ljava/lang/Throwable; {:try_start_70 .. :try_end_70} :catch_42

    .line 1448
    :goto_50
    :try_start_71
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v176

    .line 1449
    .restart local v176    # "pM":Landroid/content/pm/PackageManager;
    if-eqz v176, :cond_32

    .line 1450
    const-string v7, "com.sec.feature.cocktailbar"

    move-object/from16 v0, v176

    invoke-virtual {v0, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_32

    .line 1451
    const-string v7, "SystemServer"

    const-string v9, "CocktailBar Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1452
    const-string v7, "CocktailBarService"

    new-instance v9, Lcom/android/server/cocktailbar/CocktailBarManagerService;

    invoke-direct {v9, v5}, Lcom/android/server/cocktailbar/CocktailBarManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_71
    .catch Ljava/lang/Throwable; {:try_start_71 .. :try_end_71} :catch_43

    .line 1464
    .end local v176    # "pM":Landroid/content/pm/PackageManager;
    :cond_32
    :goto_51
    :try_start_72
    const-string v7, "SystemServer"

    const-string v9, "SamplingProfiler Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1465
    const-string v7, "samplingprofiler"

    new-instance v9, Lcom/android/server/SamplingProfilerService;

    invoke-direct {v9, v5}, Lcom/android/server/SamplingProfilerService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_72
    .catch Ljava/lang/Throwable; {:try_start_72 .. :try_end_72} :catch_44

    .line 1471
    :goto_52
    if-nez v115, :cond_33

    .line 1473
    :try_start_73
    const-string v7, "SystemServer"

    const-string v9, "NetworkTimeUpdateService"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1474
    new-instance v172, Lcom/android/server/NetworkTimeUpdateService;

    move-object/from16 v0, v172

    invoke-direct {v0, v5}, Lcom/android/server/NetworkTimeUpdateService;-><init>(Landroid/content/Context;)V
    :try_end_73
    .catch Ljava/lang/Throwable; {:try_start_73 .. :try_end_73} :catch_45

    .end local v171    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .local v172, "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v171, v172

    .line 1506
    .end local v172    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .restart local v171    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    :cond_33
    :goto_53
    if-nez v114, :cond_34

    .line 1508
    :try_start_74
    const-string v7, "SystemServer"

    const-string v9, "CommonTimeManagementService"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1509
    new-instance v92, Lcom/android/server/CommonTimeManagementService;

    move-object/from16 v0, v92

    invoke-direct {v0, v5}, Lcom/android/server/CommonTimeManagementService;-><init>(Landroid/content/Context;)V
    :try_end_74
    .catch Ljava/lang/Throwable; {:try_start_74 .. :try_end_74} :catch_46

    .line 1510
    .end local v91    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .local v92, "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    :try_start_75
    const-string v7, "commontime_management"

    move-object/from16 v0, v92

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_75
    .catch Ljava/lang/Throwable; {:try_start_75 .. :try_end_75} :catch_67

    move-object/from16 v91, v92

    .line 1516
    .end local v92    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v91    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    :cond_34
    :goto_54
    if-nez v115, :cond_35

    .line 1518
    :try_start_76
    const-string v7, "SystemServer"

    const-string v9, "CertBlacklister"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1519
    new-instance v7, Lcom/android/server/CertBlacklister;

    invoke-direct {v7, v5}, Lcom/android/server/CertBlacklister;-><init>(Landroid/content/Context;)V
    :try_end_76
    .catch Ljava/lang/Throwable; {:try_start_76 .. :try_end_76} :catch_47

    .line 1525
    :cond_35
    :goto_55
    if-nez v116, :cond_36

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x111004d

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    if-eqz v7, :cond_36

    .line 1528
    :try_start_77
    const-string v7, "SystemServer"

    const-string v9, "Dreams Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1530
    new-instance v126, Lcom/android/server/dreams/DreamManagerService;

    move-object/from16 v0, v126

    move-object/from16 v1, v21

    invoke-direct {v0, v5, v1}, Lcom/android/server/dreams/DreamManagerService;-><init>(Landroid/content/Context;Landroid/os/Handler;)V
    :try_end_77
    .catch Ljava/lang/Throwable; {:try_start_77 .. :try_end_77} :catch_48

    .line 1531
    .end local v125    # "dreamy":Lcom/android/server/dreams/DreamManagerService;
    .local v126, "dreamy":Lcom/android/server/dreams/DreamManagerService;
    :try_start_78
    const-string v7, "dreams"

    move-object/from16 v0, v126

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_78
    .catch Ljava/lang/Throwable; {:try_start_78 .. :try_end_78} :catch_66

    move-object/from16 v125, v126

    .line 1539
    .end local v126    # "dreamy":Lcom/android/server/dreams/DreamManagerService;
    .restart local v125    # "dreamy":Lcom/android/server/dreams/DreamManagerService;
    :cond_36
    :goto_56
    :try_start_79
    const-string v7, "SystemServer"

    const-string v9, "Transcloud Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1540
    new-instance v213, Lcom/android/server/TranscloudMonitorService;

    move-object/from16 v0, v213

    move-object/from16 v1, v21

    invoke-direct {v0, v5, v1}, Lcom/android/server/TranscloudMonitorService;-><init>(Landroid/content/Context;Landroid/os/Handler;)V
    :try_end_79
    .catch Ljava/lang/Throwable; {:try_start_79 .. :try_end_79} :catch_49

    .end local v212    # "transcloud":Lcom/android/server/TranscloudMonitorService;
    .local v213, "transcloud":Lcom/android/server/TranscloudMonitorService;
    move-object/from16 v212, v213

    .line 1546
    .end local v213    # "transcloud":Lcom/android/server/TranscloudMonitorService;
    .restart local v212    # "transcloud":Lcom/android/server/TranscloudMonitorService;
    :goto_57
    if-nez v116, :cond_37

    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v7

    if-nez v7, :cond_37

    .line 1548
    :try_start_7a
    const-string v7, "SystemServer"

    const-string v9, "Assets Atlas Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1549
    new-instance v78, Lcom/android/server/AssetAtlasService;

    move-object/from16 v0, v78

    invoke-direct {v0, v5}, Lcom/android/server/AssetAtlasService;-><init>(Landroid/content/Context;)V
    :try_end_7a
    .catch Ljava/lang/Throwable; {:try_start_7a .. :try_end_7a} :catch_4a

    .line 1550
    .end local v77    # "atlas":Lcom/android/server/AssetAtlasService;
    .local v78, "atlas":Lcom/android/server/AssetAtlasService;
    :try_start_7b
    const-string v7, "assetatlas"

    move-object/from16 v0, v78

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_7b
    .catch Ljava/lang/Throwable; {:try_start_7b .. :try_end_7b} :catch_65

    move-object/from16 v77, v78

    .line 1557
    .end local v78    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v77    # "atlas":Lcom/android/server/AssetAtlasService;
    :cond_37
    :goto_58
    :try_start_7c
    const-string v7, "SystemServer"

    const-string v9, "IdleMaintenanceService"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1558
    new-instance v7, Lcom/android/server/IdleMaintenanceService;

    invoke-direct {v7, v5, v8}, Lcom/android/server/IdleMaintenanceService;-><init>(Landroid/content/Context;Lcom/android/server/BatteryService;)V
    :try_end_7c
    .catch Ljava/lang/Throwable; {:try_start_7c .. :try_end_7c} :catch_4b

    .line 1565
    :goto_59
    const-string v7, "SystemServer"

    const-string v9, "SEC_PRODUCT_FEATURE_ABSOLUTE_ENABLE=FALSE - true"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1568
    :try_start_7d
    const-string v7, "SystemServer"

    const-string v9, "Absolute Persistence Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1569
    const-string v7, "ABTPersistenceService"

    new-instance v9, Lcom/absolute/android/persistservice/ABTPersistenceService;

    invoke-direct {v9, v5}, Lcom/absolute/android/persistservice/ABTPersistenceService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_7d
    .catch Ljava/lang/Throwable; {:try_start_7d .. :try_end_7d} :catch_4c

    .line 1577
    :goto_5a
    :try_start_7e
    const-string v7, "SystemServer"

    const-string v9, "Print Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1578
    new-instance v183, Lcom/android/server/print/PrintManagerService;

    move-object/from16 v0, v183

    invoke-direct {v0, v5}, Lcom/android/server/print/PrintManagerService;-><init>(Landroid/content/Context;)V
    :try_end_7e
    .catch Ljava/lang/Throwable; {:try_start_7e .. :try_end_7e} :catch_4d

    .line 1579
    .end local v182    # "printManager":Lcom/android/server/print/PrintManagerService;
    .local v183, "printManager":Lcom/android/server/print/PrintManagerService;
    :try_start_7f
    const-string v7, "print"

    move-object/from16 v0, v183

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_7f
    .catch Ljava/lang/Throwable; {:try_start_7f .. :try_end_7f} :catch_64

    move-object/from16 v182, v183

    .line 1584
    .end local v183    # "printManager":Lcom/android/server/print/PrintManagerService;
    .restart local v182    # "printManager":Lcom/android/server/print/PrintManagerService;
    :goto_5b
    if-nez v116, :cond_38

    .line 1586
    :try_start_80
    const-string v7, "SystemServer"

    const-string v9, "Media Router Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1587
    new-instance v157, Lcom/android/server/media/MediaRouterService;

    move-object/from16 v0, v157

    invoke-direct {v0, v5}, Lcom/android/server/media/MediaRouterService;-><init>(Landroid/content/Context;)V
    :try_end_80
    .catch Ljava/lang/Throwable; {:try_start_80 .. :try_end_80} :catch_4e

    .line 1588
    .end local v156    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .local v157, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :try_start_81
    const-string v7, "media_router"

    move-object/from16 v0, v157

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_81
    .catch Ljava/lang/Throwable; {:try_start_81 .. :try_end_81} :catch_63

    move-object/from16 v156, v157

    .line 1608
    .end local v157    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v156    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :cond_38
    :goto_5c
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v177

    .line 1609
    .local v177, "packageMgr":Landroid/content/pm/PackageManager;
    const-string v7, "com.sec.feature.minimode"

    move-object/from16 v0, v177

    invoke-virtual {v0, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3a

    .line 1611
    :try_start_82
    const-string v7, "SystemServer"

    const-string v9, "MiniModeAppManager Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1612
    const-string v159, "/data/dalvik-cache/system@framework@minimode.jar@classes.dex"

    .line 1613
    .local v159, "minimodeFrameworkDexPath":Ljava/lang/String;
    const-string v161, "/data/dalvik-cache/minimode.dex"

    .line 1615
    .local v161, "minimodeGenDexPath":Ljava/lang/String;
    sget-object v7, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    move-object/from16 v0, v159

    invoke-interface {v7, v0}, Llibcore/io/Os;->stat(Ljava/lang/String;)Llibcore/io/StructStat;

    move-result-object v200

    .line 1616
    .local v200, "stat":Llibcore/io/StructStat;
    if-eqz v200, :cond_39

    .line 1617
    new-instance v7, Ljava/io/File;

    move-object/from16 v0, v159

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v9, Ljava/io/File;

    move-object/from16 v0, v161

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v7, v9}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v7

    if-eqz v7, :cond_39

    .line 1618
    const-string v7, "SystemServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v161

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " is copied from "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v159

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1619
    new-instance v160, Ljava/io/File;

    invoke-direct/range {v160 .. v161}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1620
    .local v160, "minimodeGenDexFile":Ljava/io/File;
    move-object/from16 v0, v200

    iget-wide v9, v0, Llibcore/io/StructStat;->st_mtime:J

    move-object/from16 v0, v160

    invoke-virtual {v0, v9, v10}, Ljava/io/File;->setLastModified(J)Z

    move-result v7

    if-eqz v7, :cond_39

    .line 1621
    const-string v7, "SystemServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "lastModfied time of "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v161

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " is changed to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v200

    iget-wide v12, v0, Llibcore/io/StructStat;->st_mtime:J

    invoke-virtual {v9, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1626
    .end local v160    # "minimodeGenDexFile":Ljava/io/File;
    :cond_39
    new-instance v86, Ldalvik/system/DexClassLoader;

    const-string v7, "/system/framework/minimode.jar"

    const-string v9, "/data/dalvik-cache/"

    const/4 v10, 0x0

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v12

    move-object/from16 v0, v86

    invoke-direct {v0, v7, v9, v10, v12}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 1628
    .local v86, "cl":Ljava/lang/ClassLoader;
    const-string v7, "com.sec.minimode.manager.MiniModeAppManagerService"

    move-object/from16 v0, v86

    invoke-virtual {v0, v7}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v67

    .line 1629
    .local v67, "MiniModeAppManagerServiceClass":Ljava/lang/Class;
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Landroid/content/Context;

    aput-object v10, v7, v9

    move-object/from16 v0, v67

    invoke-virtual {v0, v7}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v68

    .line 1630
    .local v68, "MiniModeAppManagerServiceContructor":Ljava/lang/reflect/Constructor;
    const-string v9, "mini_mode_app_manager"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v5, v7, v10

    move-object/from16 v0, v68

    invoke-virtual {v0, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/IBinder;

    invoke-static {v9, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_82
    .catch Ljava/lang/Throwable; {:try_start_82 .. :try_end_82} :catch_4f

    .line 1639
    .end local v67    # "MiniModeAppManagerServiceClass":Ljava/lang/Class;
    .end local v68    # "MiniModeAppManagerServiceContructor":Ljava/lang/reflect/Constructor;
    .end local v86    # "cl":Ljava/lang/ClassLoader;
    .end local v159    # "minimodeFrameworkDexPath":Ljava/lang/String;
    .end local v161    # "minimodeGenDexPath":Ljava/lang/String;
    .end local v200    # "stat":Llibcore/io/StructStat;
    :cond_3a
    :goto_5d
    const-string v7, "com.sec.feature.barcode_emulator"

    move-object/from16 v0, v177

    invoke-virtual {v0, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3b

    .line 1641
    :try_start_83
    const-string v7, "SystemServer"

    const-string v9, "BarBeamService"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1642
    new-instance v80, Landroid/app/BarBeamService;

    move-object/from16 v0, v80

    invoke-direct {v0, v5}, Landroid/app/BarBeamService;-><init>(Landroid/content/Context;)V

    .line 1644
    .local v80, "barbeam":Landroid/app/BarBeamService;
    const-string v7, "barbeam"

    move-object/from16 v0, v80

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_83
    .catch Ljava/lang/Throwable; {:try_start_83 .. :try_end_83} :catch_50

    .line 1652
    .end local v80    # "barbeam":Landroid/app/BarBeamService;
    :cond_3b
    :goto_5e
    :try_start_84
    const-string v7, "SystemServer"

    const-string v9, "Motion Recognition Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1653
    const-string v7, "motion_recognition"

    new-instance v9, Landroid/hardware/motion/MotionRecognitionService;

    invoke-direct {v9, v5}, Landroid/hardware/motion/MotionRecognitionService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_84
    .catch Ljava/lang/Throwable; {:try_start_84 .. :try_end_84} :catch_51

    .line 1660
    :goto_5f
    :try_start_85
    const-string v7, "SystemServer"

    const-string v9, "VoIPInterfaceManager Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1661
    const-string/jumbo v7, "voip"

    new-instance v9, Lcom/android/server/VoIPInterfaceManager;

    invoke-direct {v9, v5}, Lcom/android/server/VoIPInterfaceManager;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_85
    .catch Ljava/lang/Throwable; {:try_start_85 .. :try_end_85} :catch_52

    .line 1668
    :goto_60
    const-string v7, "com.sec.feature.cover.flip"

    move-object/from16 v0, v177

    invoke-virtual {v0, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3c

    const-string v7, "com.sec.feature.cover.sview"

    move-object/from16 v0, v177

    invoke-virtual {v0, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3d

    .line 1671
    :cond_3c
    :try_start_86
    const-string v7, "SystemServer"

    const-string v9, "CoverManager Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1672
    new-instance v105, Lcom/android/server/cover/CoverManagerService;

    move-object/from16 v0, v105

    invoke-direct {v0, v5}, Lcom/android/server/cover/CoverManagerService;-><init>(Landroid/content/Context;)V

    .line 1673
    .local v105, "cover":Lcom/android/server/cover/CoverManagerService;
    const-string v7, "cover"

    move-object/from16 v0, v105

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_86
    .catch Ljava/lang/Throwable; {:try_start_86 .. :try_end_86} :catch_53

    .line 1682
    .end local v105    # "cover":Lcom/android/server/cover/CoverManagerService;
    :cond_3d
    :goto_61
    :try_start_87
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v176

    .line 1683
    .restart local v176    # "pM":Landroid/content/pm/PackageManager;
    if-eqz v176, :cond_3e

    .line 1685
    const-string v7, "SystemServer"

    const-string v9, "PackageManager is not null!!"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1686
    const-string v7, "com.sec.feature.healthcover"

    move-object/from16 v0, v176

    invoke-virtual {v0, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v7

    const/4 v9, 0x1

    if-ne v7, v9, :cond_3e

    .line 1687
    const-string v7, "SystemServer"

    const-string v9, "HealthCoverManager Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1688
    new-instance v137, Ldalvik/system/PathClassLoader;

    const-string v7, "/system/framework/healthcoverservice.jar"

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    move-object/from16 v0, v137

    invoke-direct {v0, v7, v9}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 1689
    .local v137, "hcClassLoader":Ldalvik/system/PathClassLoader;
    const-string v7, "com.samsung.android.healthcover.HealthCoverService"

    move-object/from16 v0, v137

    invoke-virtual {v0, v7}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v136

    .line 1690
    .local v136, "hcClass":Ljava/lang/Class;
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Landroid/content/Context;

    aput-object v10, v7, v9

    move-object/from16 v0, v136

    invoke-virtual {v0, v7}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v138

    .line 1691
    .local v138, "hcConstructor":Ljava/lang/reflect/Constructor;
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v5, v7, v9

    move-object/from16 v0, v138

    invoke-virtual {v0, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v139

    check-cast v139, Landroid/os/IBinder;

    .line 1692
    .local v139, "hcService":Landroid/os/IBinder;
    const-string v7, "healthcover"

    move-object/from16 v0, v139

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_87
    .catch Ljava/lang/Exception; {:try_start_87 .. :try_end_87} :catch_54

    .line 1708
    .end local v69    # "SecEDSEnable":Ljava/lang/String;
    .end local v136    # "hcClass":Ljava/lang/Class;
    .end local v137    # "hcClassLoader":Ldalvik/system/PathClassLoader;
    .end local v138    # "hcConstructor":Ljava/lang/reflect/Constructor;
    .end local v139    # "hcService":Landroid/os/IBinder;
    .end local v155    # "mdsEnable":Ljava/lang/String;
    .end local v176    # "pM":Landroid/content/pm/PackageManager;
    .end local v177    # "packageMgr":Landroid/content/pm/PackageManager;
    :cond_3e
    :goto_62
    :try_start_88
    invoke-virtual {v5}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v86

    .line 1709
    .restart local v86    # "cl":Ljava/lang/ClassLoader;
    const-string v7, "com.sec.android.smartface.SmartFaceManager"

    const/4 v9, 0x1

    move-object/from16 v0, v86

    invoke-static {v7, v9, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v87

    .line 1710
    .local v87, "class_SmartFaceManager":Ljava/lang/Class;
    const-string v7, "SMARTFACE_SERVICE"

    move-object/from16 v0, v87

    invoke-virtual {v0, v7}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v133

    .line 1712
    .local v133, "field_SMARTFACE_SERVICE":Ljava/lang/reflect/Field;
    const-string v7, "com.sec.android.smartface.SmartFaceService"

    const/4 v9, 0x1

    move-object/from16 v0, v86

    invoke-static {v7, v9, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v88

    .line 1713
    .local v88, "class_SmartFaceService":Ljava/lang/Class;
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Landroid/content/Context;

    aput-object v10, v7, v9

    move-object/from16 v0, v88

    invoke-virtual {v0, v7}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v97

    .line 1715
    .local v97, "constructor_SmartFaceService":Ljava/lang/reflect/Constructor;
    const/4 v7, 0x0

    move-object/from16 v0, v133

    invoke-virtual {v0, v7}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v5, v9, v10

    move-object/from16 v0, v97

    invoke-virtual {v0, v9}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/IBinder;

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1716
    const-string v7, "SystemServer"

    const-string v9, "SmartFaceService loaded!"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_88
    .catch Ljava/lang/Exception; {:try_start_88 .. :try_end_88} :catch_55

    .line 1725
    .end local v86    # "cl":Ljava/lang/ClassLoader;
    .end local v87    # "class_SmartFaceManager":Ljava/lang/Class;
    .end local v88    # "class_SmartFaceService":Ljava/lang/Class;
    .end local v97    # "constructor_SmartFaceService":Ljava/lang/reflect/Constructor;
    .end local v133    # "field_SMARTFACE_SERVICE":Ljava/lang/reflect/Field;
    :goto_63
    invoke-static {}, Lcom/samsung/appdisabler/AppDisablerService;->configurationFileExists()Z

    move-result v7

    if-eqz v7, :cond_3f

    .line 1727
    :try_start_89
    new-instance v73, Lcom/samsung/appdisabler/AppDisablerService;

    move-object/from16 v0, v73

    invoke-direct {v0, v5}, Lcom/samsung/appdisabler/AppDisablerService;-><init>(Landroid/content/Context;)V

    .line 1728
    .local v73, "appDisablerService":Lcom/samsung/appdisabler/AppDisablerService;
    const-string v7, "SamsungAppDisabler"

    move-object/from16 v0, v73

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_89
    .catch Ljava/lang/Throwable; {:try_start_89 .. :try_end_89} :catch_56

    .line 1768
    .end local v73    # "appDisablerService":Lcom/samsung/appdisabler/AppDisablerService;
    :cond_3f
    :goto_64
    const-string v7, "SystemServer"

    const-string v9, "Window Manager detectSafeMode"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1769
    invoke-virtual/range {v233 .. v233}, Lcom/android/server/wm/WindowManagerService;->detectSafeMode()Z

    move-result v47

    .line 1770
    .local v47, "safeMode":Z
    if-eqz v47, :cond_56

    .line 1771
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/am/ActivityManagerService;->enterSafeMode()V

    .line 1773
    const/4 v7, 0x1

    sput-boolean v7, Ldalvik/system/Zygote;->systemInSafeMode:Z

    .line 1775
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v7

    invoke-virtual {v7}, Ldalvik/system/VMRuntime;->disableJitCompilation()V

    .line 1784
    :goto_65
    :try_start_8a
    const-string v7, "SystemServer"

    const-string/jumbo v9, "vibrator systemReady"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1785
    invoke-virtual/range {v223 .. v223}, Lcom/android/server/VibratorService;->systemReady()V
    :try_end_8a
    .catch Ljava/lang/Throwable; {:try_start_8a .. :try_end_8a} :catch_57

    .line 1790
    :goto_66
    if-eqz v151, :cond_40

    .line 1792
    :try_start_8b
    const-string v7, "SystemServer"

    const-string v9, "lockSettings systemReady"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1793
    invoke-virtual/range {v151 .. v151}, Lcom/android/server/LockSettingsService;->systemReady()V
    :try_end_8b
    .catch Ljava/lang/Throwable; {:try_start_8b .. :try_end_8b} :catch_58

    .line 1799
    :cond_40
    :goto_67
    if-eqz v110, :cond_41

    .line 1801
    :try_start_8c
    const-string v7, "SystemServer"

    const-string v9, "devicePolicy systemReady"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1802
    invoke-virtual/range {v110 .. v110}, Lcom/android/server/DevicePolicyManagerService;->systemReady()V
    :try_end_8c
    .catch Ljava/lang/Throwable; {:try_start_8c .. :try_end_8c} :catch_59

    .line 1810
    :cond_41
    :goto_68
    if-eqz v129, :cond_42

    .line 1811
    invoke-virtual/range {v129 .. v129}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->systemReady()V

    .line 1812
    const-string v7, "SystemServer"

    const-string v9, "enterprisePolicy systemReady"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1816
    :cond_42
    if-eqz v173, :cond_43

    .line 1818
    :try_start_8d
    const-string v7, "SystemServer"

    const-string v9, "notification systemReady"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1819
    invoke-virtual/range {v173 .. v173}, Lcom/android/server/NotificationManagerService;->systemReady()V
    :try_end_8d
    .catch Ljava/lang/Throwable; {:try_start_8d .. :try_end_8d} :catch_5a

    .line 1826
    :cond_43
    :goto_69
    :try_start_8e
    const-string v7, "SystemServer"

    const-string v9, "Window Manager systemReady"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1827
    invoke-virtual/range {v233 .. v233}, Lcom/android/server/wm/WindowManagerService;->systemReady()V
    :try_end_8e
    .catch Ljava/lang/Throwable; {:try_start_8e .. :try_end_8e} :catch_5b

    .line 1832
    :goto_6a
    if-eqz v47, :cond_44

    .line 1833
    const-string v7, "SystemServer"

    const-string v9, "ActivityManager showSafeModeOverlay"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1834
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/am/ActivityManagerService;->showSafeModeOverlay()V

    .line 1840
    :cond_44
    invoke-virtual/range {v233 .. v233}, Lcom/android/server/wm/WindowManagerService;->computeNewConfiguration()Landroid/content/res/Configuration;

    move-result-object v93

    .line 1841
    .local v93, "config":Landroid/content/res/Configuration;
    new-instance v158, Landroid/util/DisplayMetrics;

    invoke-direct/range {v158 .. v158}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1842
    .local v158, "metrics":Landroid/util/DisplayMetrics;
    const-string/jumbo v7, "window"

    invoke-virtual {v5, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v225

    check-cast v225, Landroid/view/WindowManager;

    .line 1843
    .local v225, "w":Landroid/view/WindowManager;
    invoke-interface/range {v225 .. v225}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    move-object/from16 v0, v158

    invoke-virtual {v7, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1844
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    move-object/from16 v0, v93

    move-object/from16 v1, v158

    invoke-virtual {v7, v0, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 1847
    :try_start_8f
    const-string v7, "SystemServer"

    const-string v9, "PowerManagerService systemReady"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1848
    move-object/from16 v0, v216

    move-object/from16 v1, v125

    invoke-virtual {v4, v0, v1}, Lcom/android/server/power/PowerManagerService;->systemReady(Lcom/android/server/TwilightService;Lcom/android/server/dreams/DreamManagerService;)V
    :try_end_8f
    .catch Ljava/lang/Throwable; {:try_start_8f .. :try_end_8f} :catch_5c

    .line 1855
    :goto_6b
    :try_start_90
    const-string v7, "SystemServer"

    const-string v9, "LightsService systemReady"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1856
    invoke-virtual {v6}, Lcom/android/server/LightsService;->systemReady()V
    :try_end_90
    .catch Ljava/lang/Throwable; {:try_start_90 .. :try_end_90} :catch_5d

    .line 1862
    :goto_6c
    if-eqz v121, :cond_45

    .line 1864
    :try_start_91
    const-string v7, "SystemServer"

    const-string v9, "AdaptiveDisplayColorService systemReady"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1865
    invoke-virtual/range {v121 .. v121}, Lcom/android/server/AdaptiveDisplayColorService;->systemReady()V
    :try_end_91
    .catch Ljava/lang/Throwable; {:try_start_91 .. :try_end_91} :catch_5e

    .line 1872
    :cond_45
    :goto_6d
    :try_start_92
    const-string v7, "SystemServer"

    const-string v9, "PackageManagerService systemReady"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1873
    invoke-interface/range {v179 .. v179}, Landroid/content/pm/IPackageManager;->systemReady()V
    :try_end_92
    .catch Ljava/lang/Throwable; {:try_start_92 .. :try_end_92} :catch_5f

    .line 1879
    :goto_6e
    :try_start_93
    const-string v7, "SystemServer"

    const-string v9, "DisplayManagerService systemReady"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1880
    move/from16 v0, v47

    move/from16 v1, v24

    invoke-virtual {v11, v0, v1}, Lcom/android/server/display/DisplayManagerService;->systemReady(ZZ)V
    :try_end_93
    .catch Ljava/lang/Throwable; {:try_start_93 .. :try_end_93} :catch_60

    .line 1885
    :goto_6f
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v222

    .line 1886
    .restart local v222    # "versionInfo":Landroid/os/Bundle;
    const-string v7, "2.0"

    const-string/jumbo v9, "version"

    move-object/from16 v0, v222

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_46

    .line 1888
    :try_start_94
    invoke-virtual/range {v178 .. v178}, Lcom/android/server/pm/PersonaManagerService;->systemReady()V
    :try_end_94
    .catch Ljava/lang/Throwable; {:try_start_94 .. :try_end_94} :catch_61

    .line 1895
    :cond_46
    :goto_70
    move-object/from16 v34, v5

    .line 1896
    .local v34, "contextF":Landroid/content/Context;
    move-object/from16 v35, v162

    .line 1897
    .local v35, "mountServiceF":Lcom/android/server/MountService;
    move-object/from16 v36, v8

    .line 1898
    .local v36, "batteryF":Lcom/android/server/BatteryService;
    move-object/from16 v37, v30

    .line 1899
    .local v37, "networkManagementF":Lcom/android/server/NetworkManagementService;
    move-object/from16 v38, v29

    .line 1900
    .local v38, "networkStatsF":Lcom/android/server/net/NetworkStatsService;
    move-object/from16 v39, v25

    .line 1901
    .local v39, "networkPolicyF":Lcom/android/server/net/NetworkPolicyManagerService;
    move-object/from16 v40, v94

    .line 1902
    .local v40, "connectivityF":Lcom/android/server/ConnectivityService;
    move-object/from16 v41, v123

    .line 1903
    .local v41, "dockF":Lcom/android/server/DockObserver;
    move-object/from16 v42, v220

    .line 1904
    .local v42, "usbF":Lcom/android/server/usb/UsbService;
    move-object/from16 v43, v216

    .line 1905
    .local v43, "twilightF":Lcom/android/server/TwilightService;
    move-object/from16 v44, v218

    .line 1906
    .local v44, "uiModeF":Lcom/android/server/UiModeManagerService;
    move-object/from16 v46, v74

    .line 1907
    .local v46, "appWidgetF":Lcom/android/server/AppWidgetService;
    move-object/from16 v48, v226

    .line 1908
    .local v48, "wallpaperF":Lcom/android/server/WallpaperManagerService;
    move-object/from16 v49, v140

    .line 1909
    .local v49, "immF":Lcom/android/server/InputMethodManagerService;
    move-object/from16 v45, v189

    .line 1910
    .local v45, "recognitionF":Lcom/android/server/RecognitionManagerService;
    move-object/from16 v51, v149

    .line 1911
    .local v51, "locationF":Lcom/android/server/LocationManagerService;
    move-object/from16 v52, v191

    .line 1912
    .local v52, "sLocationF":Landroid/os/IBinder;
    move-object/from16 v53, v103

    .line 1913
    .local v53, "countryDetectorF":Lcom/android/server/CountryDetectorService;
    move-object/from16 v54, v171

    .line 1914
    .local v54, "networkTimeUpdaterF":Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v55, v91

    .line 1915
    .local v55, "commonTimeMgmtServiceF":Lcom/android/server/CommonTimeManagementService;
    move-object/from16 v56, v214

    .line 1916
    .local v56, "textServiceManagerServiceF":Lcom/android/server/TextServicesManagerService;
    move-object/from16 v50, v201

    .line 1917
    .local v50, "statusBarF":Lcom/android/server/StatusBarManagerService;
    move-object/from16 v57, v125

    .line 1919
    .local v57, "dreamyF":Lcom/android/server/dreams/DreamManagerService;
    move-object/from16 v58, v212

    .line 1921
    .local v58, "transcloudF":Lcom/android/server/TranscloudMonitorService;
    move-object/from16 v59, v77

    .line 1922
    .local v59, "atlasF":Lcom/android/server/AssetAtlasService;
    move-object/from16 v60, v20

    .line 1923
    .local v60, "inputManagerF":Lcom/android/server/input/InputManagerService;
    move-object/from16 v61, v203

    .line 1924
    .local v61, "telephonyRegistryF":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v64, v166

    .line 1925
    .local v64, "msimTelephonyRegistryF":Lcom/android/server/MSimTelephonyRegistry;
    move-object/from16 v65, v182

    .line 1926
    .local v65, "printManagerF":Lcom/android/server/print/PrintManagerService;
    move-object/from16 v66, v156

    .line 1929
    .local v66, "mediaRouterF":Lcom/android/server/media/MediaRouterService;
    move-object/from16 v63, v100

    .line 1937
    .local v63, "containerServiceF":Lcom/sec/knox/container/EnterpriseContainerService;
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    new-instance v31, Lcom/android/server/ServerThread$2;

    move-object/from16 v32, p0

    invoke-direct/range {v31 .. v66}, Lcom/android/server/ServerThread$2;-><init>(Lcom/android/server/ServerThread;ZLandroid/content/Context;Lcom/android/server/MountService;Lcom/android/server/BatteryService;Lcom/android/server/NetworkManagementService;Lcom/android/server/net/NetworkStatsService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/ConnectivityService;Lcom/android/server/DockObserver;Lcom/android/server/usb/UsbService;Lcom/android/server/TwilightService;Lcom/android/server/UiModeManagerService;Lcom/android/server/RecognitionManagerService;Lcom/android/server/AppWidgetService;ZLcom/android/server/WallpaperManagerService;Lcom/android/server/InputMethodManagerService;Lcom/android/server/StatusBarManagerService;Lcom/android/server/LocationManagerService;Landroid/os/IBinder;Lcom/android/server/CountryDetectorService;Lcom/android/server/NetworkTimeUpdateService;Lcom/android/server/CommonTimeManagementService;Lcom/android/server/TextServicesManagerService;Lcom/android/server/dreams/DreamManagerService;Lcom/android/server/TranscloudMonitorService;Lcom/android/server/AssetAtlasService;Lcom/android/server/input/InputManagerService;Lcom/android/server/TelephonyRegistry;ZLcom/sec/knox/container/EnterpriseContainerService;Lcom/android/server/MSimTelephonyRegistry;Lcom/android/server/print/PrintManagerService;Lcom/android/server/media/MediaRouterService;)V

    move-object/from16 v0, v31

    invoke-virtual {v7, v0}, Lcom/android/server/am/ActivityManagerService;->systemReady(Ljava/lang/Runnable;)V

    .line 2126
    invoke-static {}, Landroid/os/StrictMode;->conditionallyEnableDebugLogging()Z

    move-result v7

    if-eqz v7, :cond_47

    .line 2127
    const-string v7, "SystemServer"

    const-string v9, "Enabled StrictMode for system server main thread."

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2131
    :cond_47
    const/4 v7, -0x2

    invoke-static {v7}, Landroid/os/Process;->setThreadPriority(I)V

    .line 2135
    const-string v7, "SystemServer"

    const-string v9, "!@Boot: End initAndLoop"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2136
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 2137
    const-string v7, "SystemServer"

    const-string v9, "System ServerThread is exiting!"

    invoke-static {v7, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2138
    return-void

    .line 451
    .end local v6    # "lights":Lcom/android/server/LightsService;
    .end local v8    # "battery":Lcom/android/server/BatteryService;
    .end local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v25    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v34    # "contextF":Landroid/content/Context;
    .end local v35    # "mountServiceF":Lcom/android/server/MountService;
    .end local v36    # "batteryF":Lcom/android/server/BatteryService;
    .end local v37    # "networkManagementF":Lcom/android/server/NetworkManagementService;
    .end local v38    # "networkStatsF":Lcom/android/server/net/NetworkStatsService;
    .end local v39    # "networkPolicyF":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v40    # "connectivityF":Lcom/android/server/ConnectivityService;
    .end local v41    # "dockF":Lcom/android/server/DockObserver;
    .end local v42    # "usbF":Lcom/android/server/usb/UsbService;
    .end local v43    # "twilightF":Lcom/android/server/TwilightService;
    .end local v44    # "uiModeF":Lcom/android/server/UiModeManagerService;
    .end local v45    # "recognitionF":Lcom/android/server/RecognitionManagerService;
    .end local v46    # "appWidgetF":Lcom/android/server/AppWidgetService;
    .end local v47    # "safeMode":Z
    .end local v48    # "wallpaperF":Lcom/android/server/WallpaperManagerService;
    .end local v49    # "immF":Lcom/android/server/InputMethodManagerService;
    .end local v50    # "statusBarF":Lcom/android/server/StatusBarManagerService;
    .end local v51    # "locationF":Lcom/android/server/LocationManagerService;
    .end local v52    # "sLocationF":Landroid/os/IBinder;
    .end local v53    # "countryDetectorF":Lcom/android/server/CountryDetectorService;
    .end local v54    # "networkTimeUpdaterF":Lcom/android/server/NetworkTimeUpdateService;
    .end local v55    # "commonTimeMgmtServiceF":Lcom/android/server/CommonTimeManagementService;
    .end local v56    # "textServiceManagerServiceF":Lcom/android/server/TextServicesManagerService;
    .end local v57    # "dreamyF":Lcom/android/server/dreams/DreamManagerService;
    .end local v58    # "transcloudF":Lcom/android/server/TranscloudMonitorService;
    .end local v59    # "atlasF":Lcom/android/server/AssetAtlasService;
    .end local v60    # "inputManagerF":Lcom/android/server/input/InputManagerService;
    .end local v61    # "telephonyRegistryF":Lcom/android/server/TelephonyRegistry;
    .end local v63    # "containerServiceF":Lcom/sec/knox/container/EnterpriseContainerService;
    .end local v64    # "msimTelephonyRegistryF":Lcom/android/server/MSimTelephonyRegistry;
    .end local v65    # "printManagerF":Lcom/android/server/print/PrintManagerService;
    .end local v66    # "mediaRouterF":Lcom/android/server/media/MediaRouterService;
    .end local v74    # "appWidget":Lcom/android/server/AppWidgetService;
    .end local v77    # "atlas":Lcom/android/server/AssetAtlasService;
    .end local v93    # "config":Landroid/content/res/Configuration;
    .end local v103    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .end local v110    # "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    .end local v125    # "dreamy":Lcom/android/server/dreams/DreamManagerService;
    .end local v129    # "enterprisePolicy":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .end local v140    # "imm":Lcom/android/server/InputMethodManagerService;
    .end local v149    # "location":Lcom/android/server/LocationManagerService;
    .end local v151    # "lockSettings":Lcom/android/server/LockSettingsService;
    .end local v156    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .end local v158    # "metrics":Landroid/util/DisplayMetrics;
    .end local v173    # "notification":Lcom/android/server/NotificationManagerService;
    .end local v182    # "printManager":Lcom/android/server/print/PrintManagerService;
    .end local v191    # "sLocation":Landroid/os/IBinder;
    .end local v201    # "statusBar":Lcom/android/server/StatusBarManagerService;
    .end local v212    # "transcloud":Lcom/android/server/TranscloudMonitorService;
    .end local v214    # "tsms":Lcom/android/server/TextServicesManagerService;
    .end local v222    # "versionInfo":Landroid/os/Bundle;
    .end local v225    # "w":Landroid/view/WindowManager;
    .end local v226    # "wallpaper":Lcom/android/server/WallpaperManagerService;
    .restart local v72    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v81    # "battery":Lcom/android/server/BatteryService;
    .restart local v106    # "cryptState":Ljava/lang/String;
    .restart local v142    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v148    # "lights":Lcom/android/server/LightsService;
    .restart local v169    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    :cond_48
    :try_start_95
    const-string v7, "1"

    move-object/from16 v0, v106

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 452
    const-string v7, "SystemServer"

    const-string v9, "Device encrypted - only parsing core apps"

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    const/16 v24, 0x1

    goto/16 :goto_7

    .line 463
    .restart local v205    # "timaEnabled":Z
    :catch_2
    move-exception v127

    .line 464
    .local v127, "e":Ljava/lang/Throwable;
    :goto_71
    const-string/jumbo v7, "starting TimaService"

    move-object/from16 v0, p0

    move-object/from16 v1, v127

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_95
    .catch Ljava/lang/RuntimeException; {:try_start_95 .. :try_end_95} :catch_3

    goto/16 :goto_8

    .line 740
    .end local v106    # "cryptState":Ljava/lang/String;
    .end local v127    # "e":Ljava/lang/Throwable;
    .end local v205    # "timaEnabled":Z
    :catch_3
    move-exception v127

    move-object/from16 v20, v142

    .end local v142    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v16, v72

    .end local v72    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v81

    .end local v81    # "battery":Lcom/android/server/BatteryService;
    .restart local v8    # "battery":Lcom/android/server/BatteryService;
    move-object/from16 v6, v148

    .line 741
    .end local v148    # "lights":Lcom/android/server/LightsService;
    .restart local v6    # "lights":Lcom/android/server/LightsService;
    .local v127, "e":Ljava/lang/RuntimeException;
    :goto_72
    const-string v7, "System"

    const-string v9, "******************************************"

    invoke-static {v7, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    const-string v7, "System"

    const-string v9, "************ Failure starting core service"

    move-object/from16 v0, v127

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1b

    .line 471
    .end local v6    # "lights":Lcom/android/server/LightsService;
    .end local v8    # "battery":Lcom/android/server/BatteryService;
    .end local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v127    # "e":Ljava/lang/RuntimeException;
    .restart local v72    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v81    # "battery":Lcom/android/server/BatteryService;
    .restart local v106    # "cryptState":Ljava/lang/String;
    .restart local v142    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v148    # "lights":Lcom/android/server/LightsService;
    .restart local v205    # "timaEnabled":Z
    :catch_4
    move-exception v127

    .line 472
    .local v127, "e":Ljava/lang/Throwable;
    :try_start_96
    const-string/jumbo v7, "starting TimaObserver"

    move-object/from16 v0, p0

    move-object/from16 v1, v127

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_9

    .line 484
    .end local v127    # "e":Ljava/lang/Throwable;
    :catch_5
    move-exception v127

    .line 485
    .local v127, "e":Ljava/lang/Exception;
    const-string v7, "SystemServer"

    const-string v9, "Unable to add TimaKesytore provider"

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    invoke-virtual/range {v127 .. v127}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_a

    .line 492
    .end local v127    # "e":Ljava/lang/Exception;
    :cond_49
    const/4 v7, 0x0

    goto/16 :goto_b

    .line 516
    .restart local v147    # "knoxVerInfo":Landroid/os/Bundle;
    :catch_6
    move-exception v127

    .line 517
    .local v127, "e":Ljava/lang/Throwable;
    const-string v7, "SystemServer"

    const-string v9, "Failure starting SE Android Manager Service"

    move-object/from16 v0, v127

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_d

    .line 538
    .end local v127    # "e":Ljava/lang/Throwable;
    .restart local v222    # "versionInfo":Landroid/os/Bundle;
    :catch_7
    move-exception v127

    .line 539
    .restart local v127    # "e":Ljava/lang/Throwable;
    :goto_73
    const-string v7, "SystemServer"

    const-string v9, "Failure starting Account Manager"

    move-object/from16 v0, v127

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_e

    .line 548
    .end local v127    # "e":Ljava/lang/Throwable;
    :catch_8
    move-exception v127

    .line 549
    .restart local v127    # "e":Ljava/lang/Throwable;
    const-string v7, "SystemServer"

    const-string v9, "Failure starting KT UCA Service"

    move-object/from16 v0, v127

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_96
    .catch Ljava/lang/RuntimeException; {:try_start_96 .. :try_end_96} :catch_3

    goto/16 :goto_f

    .line 555
    .end local v127    # "e":Ljava/lang/Throwable;
    :cond_4a
    const/4 v7, 0x0

    goto/16 :goto_10

    .line 565
    .end local v107    # "dEncService":Lcom/android/server/DirEncryptService;
    .restart local v108    # "dEncService":Lcom/android/server/DirEncryptService;
    :catch_9
    move-exception v127

    .line 566
    .restart local v127    # "e":Ljava/lang/Throwable;
    :try_start_97
    const-string v7, "SystemServer"

    const-string v9, "Failure starting DirEncryptService"

    move-object/from16 v0, v127

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_97
    .catch Ljava/lang/RuntimeException; {:try_start_97 .. :try_end_97} :catch_83

    .line 567
    const/16 v107, 0x0

    .end local v108    # "dEncService":Lcom/android/server/DirEncryptService;
    .restart local v107    # "dEncService":Lcom/android/server/DirEncryptService;
    goto/16 :goto_11

    .line 579
    .end local v127    # "e":Ljava/lang/Throwable;
    :catch_a
    move-exception v127

    .line 580
    .restart local v127    # "e":Ljava/lang/Throwable;
    :goto_74
    :try_start_98
    const-string v7, "SystemServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failure starting Container Service"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static/range {v127 .. v127}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_98
    .catch Ljava/lang/RuntimeException; {:try_start_98 .. :try_end_98} :catch_3

    goto/16 :goto_12

    .line 625
    .end local v81    # "battery":Lcom/android/server/BatteryService;
    .end local v127    # "e":Ljava/lang/Throwable;
    .end local v148    # "lights":Lcom/android/server/LightsService;
    .end local v223    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v6    # "lights":Lcom/android/server/LightsService;
    .restart local v8    # "battery":Lcom/android/server/BatteryService;
    .restart local v84    # "cfmsClass":Ljava/lang/Class;
    .restart local v211    # "toolbox":Lcom/samsung/android/toolbox/TwToolBoxService;
    .restart local v224    # "vibrator":Lcom/android/server/VibratorService;
    :cond_4b
    :try_start_99
    const-string v7, "com.android.server.ssrm.CustomFrequencyManagerService"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_99
    .catch Ljava/lang/Exception; {:try_start_99 .. :try_end_99} :catch_b
    .catch Ljava/lang/RuntimeException; {:try_start_99 .. :try_end_99} :catch_c

    move-result-object v84

    goto/16 :goto_13

    .line 630
    :catch_b
    move-exception v127

    .line 631
    .local v127, "e":Ljava/lang/Exception;
    :try_start_9a
    const-string v7, "SystemServer"

    const-string/jumbo v9, "ssrm.jar not found"

    invoke-static {v7, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_14

    .line 740
    .end local v84    # "cfmsClass":Ljava/lang/Class;
    .end local v127    # "e":Ljava/lang/Exception;
    .end local v211    # "toolbox":Lcom/samsung/android/toolbox/TwToolBoxService;
    :catch_c
    move-exception v127

    move-object/from16 v20, v142

    .end local v142    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v16, v72

    .end local v72    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    move-object/from16 v223, v224

    .end local v224    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v223    # "vibrator":Lcom/android/server/VibratorService;
    goto/16 :goto_72

    .line 639
    .end local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v223    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v72    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v84    # "cfmsClass":Ljava/lang/Class;
    .restart local v142    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v211    # "toolbox":Lcom/samsung/android/toolbox/TwToolBoxService;
    .restart local v224    # "vibrator":Lcom/android/server/VibratorService;
    :cond_4c
    const/16 v79, 0x0

    goto/16 :goto_15

    .line 643
    .restart local v79    # "autoMode":Z
    :cond_4d
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v9, "screen_mode_setting"

    const/4 v10, 0x0

    invoke-static {v7, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_9a
    .catch Ljava/lang/RuntimeException; {:try_start_9a .. :try_end_9a} :catch_c

    move-result v193

    .restart local v193    # "screenMode":I
    goto/16 :goto_16

    .line 688
    .end local v72    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v98    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v142    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v99    # "consumerIr":Lcom/android/server/ConsumerIrService;
    :cond_4e
    const/16 v22, 0x0

    goto/16 :goto_17

    :cond_4f
    const/16 v23, 0x0

    goto/16 :goto_18

    .line 710
    :cond_50
    const/4 v7, 0x1

    move/from16 v0, v131

    if-ne v0, v7, :cond_51

    .line 711
    :try_start_9b
    const-string v7, "SystemServer"

    const-string v9, "No Bluetooth Service (factory test)"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_19

    .line 740
    :catch_d
    move-exception v127

    move-object/from16 v98, v99

    .end local v99    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v98    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v223, v224

    .end local v224    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v223    # "vibrator":Lcom/android/server/VibratorService;
    goto/16 :goto_72

    .line 712
    .end local v98    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v223    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v99    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v224    # "vibrator":Lcom/android/server/VibratorService;
    :cond_51
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const-string v9, "android.hardware.bluetooth"

    invoke-virtual {v7, v9}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_52

    .line 714
    const-string v7, "SystemServer"

    const-string v9, "No Bluetooth Service (Bluetooth Hardware Not Present)"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_19

    .line 715
    :cond_52
    if-eqz v112, :cond_53

    .line 716
    const-string v7, "SystemServer"

    const-string v9, "Bluetooth Service disabled by config"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_19

    .line 718
    :cond_53
    const-string v7, "SystemServer"

    const-string v9, "Bluetooth Manager Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    new-instance v83, Lcom/android/server/BluetoothManagerService;

    move-object/from16 v0, v83

    invoke-direct {v0, v5}, Lcom/android/server/BluetoothManagerService;-><init>(Landroid/content/Context;)V
    :try_end_9b
    .catch Ljava/lang/RuntimeException; {:try_start_9b .. :try_end_9b} :catch_d

    .line 720
    .end local v82    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    .local v83, "bluetooth":Lcom/android/server/BluetoothManagerService;
    :try_start_9c
    const-string v7, "bluetooth_manager"

    move-object/from16 v0, v83

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 723
    const-string v7, "SystemServer"

    const-string v9, "Bluetooth Secure Mode Manager Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    const-string v7, "bluetooth_secure_mode_manager"

    new-instance v9, Landroid/app/BluetoothSecureManagerService;

    invoke-direct {v9, v5}, Landroid/app/BluetoothSecureManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_9c
    .catch Ljava/lang/RuntimeException; {:try_start_9c .. :try_end_9c} :catch_89

    move-object/from16 v82, v83

    .end local v83    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    .restart local v82    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    goto/16 :goto_19

    .line 735
    :catch_e
    move-exception v127

    .line 736
    .local v127, "e":Ljava/lang/Throwable;
    :goto_75
    :try_start_9d
    const-string v7, "SystemServer"

    const-string v9, "Failure starting RCP Manager Service"

    move-object/from16 v0, v127

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9d
    .catch Ljava/lang/RuntimeException; {:try_start_9d .. :try_end_9d} :catch_d

    goto/16 :goto_1a

    .line 775
    .end local v79    # "autoMode":Z
    .end local v84    # "cfmsClass":Ljava/lang/Class;
    .end local v99    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v106    # "cryptState":Ljava/lang/String;
    .end local v127    # "e":Ljava/lang/Throwable;
    .end local v147    # "knoxVerInfo":Landroid/os/Bundle;
    .end local v193    # "screenMode":I
    .end local v205    # "timaEnabled":Z
    .end local v211    # "toolbox":Lcom/samsung/android/toolbox/TwToolBoxService;
    .end local v222    # "versionInfo":Landroid/os/Bundle;
    .end local v224    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v74    # "appWidget":Lcom/android/server/AppWidgetService;
    .restart local v77    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v98    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v103    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v110    # "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    .restart local v125    # "dreamy":Lcom/android/server/dreams/DreamManagerService;
    .restart local v129    # "enterprisePolicy":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .restart local v140    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v149    # "location":Lcom/android/server/LocationManagerService;
    .restart local v151    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v156    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v173    # "notification":Lcom/android/server/NotificationManagerService;
    .restart local v182    # "printManager":Lcom/android/server/print/PrintManagerService;
    .restart local v191    # "sLocation":Landroid/os/IBinder;
    .restart local v201    # "statusBar":Lcom/android/server/StatusBarManagerService;
    .restart local v212    # "transcloud":Lcom/android/server/TranscloudMonitorService;
    .restart local v214    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v223    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v226    # "wallpaper":Lcom/android/server/WallpaperManagerService;
    :catch_f
    move-exception v127

    .line 776
    .restart local v127    # "e":Ljava/lang/Throwable;
    :goto_76
    const-string/jumbo v7, "starting Input MethodManager Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v127

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1c

    .line 783
    .end local v127    # "e":Ljava/lang/Throwable;
    :catch_10
    move-exception v127

    .line 784
    .restart local v127    # "e":Ljava/lang/Throwable;
    const-string/jumbo v7, "starting Accessibility Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v127

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1d

    .line 792
    .end local v127    # "e":Ljava/lang/Throwable;
    :catch_11
    move-exception v127

    .line 793
    .restart local v127    # "e":Ljava/lang/Throwable;
    const-string v7, "making display ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v127

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1e

    .line 799
    .end local v127    # "e":Ljava/lang/Throwable;
    :catch_12
    move-exception v127

    .line 800
    .restart local v127    # "e":Ljava/lang/Throwable;
    const-string v7, "performing boot dexopt"

    move-object/from16 v0, p0

    move-object/from16 v1, v127

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1f

    .line 816
    .end local v127    # "e":Ljava/lang/Throwable;
    :catch_13
    move-exception v127

    .line 817
    .restart local v127    # "e":Ljava/lang/Throwable;
    const-string v7, "making Containerservice preSystemReady ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v127

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_21

    .line 827
    .end local v127    # "e":Ljava/lang/Throwable;
    :catch_14
    move-exception v127

    .line 828
    .restart local v127    # "e":Ljava/lang/Throwable;
    :goto_77
    const-string/jumbo v7, "starting DevicePolicyService"

    move-object/from16 v0, p0

    move-object/from16 v1, v127

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_22

    .line 841
    .end local v127    # "e":Ljava/lang/Throwable;
    :catch_15
    move-exception v127

    .line 842
    .restart local v127    # "e":Ljava/lang/Throwable;
    :goto_78
    const-string/jumbo v7, "starting Mount Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v127

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_23

    .line 853
    .end local v127    # "e":Ljava/lang/Throwable;
    :catch_16
    move-exception v127

    .line 854
    .restart local v127    # "e":Ljava/lang/Throwable;
    const-string/jumbo v7, "starting DirEncryption service"

    move-object/from16 v0, p0

    move-object/from16 v1, v127

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_24

    .line 874
    .end local v127    # "e":Ljava/lang/Throwable;
    .restart local v155    # "mdsEnable":Ljava/lang/String;
    :catch_17
    move-exception v127

    .line 875
    .restart local v127    # "e":Ljava/lang/Throwable;
    :goto_79
    const-string/jumbo v7, "starting LockSettingsService service"

    move-object/from16 v0, p0

    move-object/from16 v1, v127

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_25

    .line 891
    .end local v127    # "e":Ljava/lang/Throwable;
    .restart local v222    # "versionInfo":Landroid/os/Bundle;
    :catch_18
    move-exception v127

    .line 892
    .restart local v127    # "e":Ljava/lang/Throwable;
    const-string v7, "Unable to call PMS preSystemReady method"

    move-object/from16 v0, p0

    move-object/from16 v1, v127

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_26

    .line 903
    .end local v127    # "e":Ljava/lang/Throwable;
    :catch_19
    move-exception v127

    .line 904
    .restart local v127    # "e":Ljava/lang/Throwable;
    :goto_7a
    const-string v7, "SystemServer"

    const-string v9, "Failure starting EnterpriseDeviceManagerService"

    move-object/from16 v0, v127

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_27

    .line 915
    .end local v127    # "e":Ljava/lang/Throwable;
    .end local v222    # "versionInfo":Landroid/os/Bundle;
    :catch_1a
    move-exception v127

    .line 916
    .restart local v127    # "e":Ljava/lang/Throwable;
    :goto_7b
    const-string v7, "SystemServer"

    const-string v9, "Failure starting Harmony EAS service"

    move-object/from16 v0, v127

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_28

    .line 925
    .end local v127    # "e":Ljava/lang/Throwable;
    :catch_1b
    move-exception v127

    .line 926
    .restart local v127    # "e":Ljava/lang/Throwable;
    :goto_7c
    const-string/jumbo v7, "starting StatusBarManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v127

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_29

    .line 935
    .end local v127    # "e":Ljava/lang/Throwable;
    :catch_1c
    move-exception v127

    .line 936
    .restart local v127    # "e":Ljava/lang/Throwable;
    const-string/jumbo v7, "starting Clipboard Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v127

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2a

    .line 948
    .end local v127    # "e":Ljava/lang/Throwable;
    :catch_1d
    move-exception v127

    .line 949
    .restart local v127    # "e":Ljava/lang/Throwable;
    const-string v7, "Failure starting ClipboardEx Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v127

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2b

    .line 957
    .end local v127    # "e":Ljava/lang/Throwable;
    :catch_1e
    move-exception v127

    .line 958
    .restart local v127    # "e":Ljava/lang/Throwable;
    const-string/jumbo v7, "starting NetworkManagement Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v127

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2c

    .line 967
    .end local v127    # "e":Ljava/lang/Throwable;
    :catch_1f
    move-exception v127

    .line 968
    .restart local v127    # "e":Ljava/lang/Throwable;
    :goto_7d
    const-string/jumbo v7, "starting Text Service Manager Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v127

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2d

    .line 977
    .end local v127    # "e":Ljava/lang/Throwable;
    :catch_20
    move-exception v127

    .line 978
    .restart local v127    # "e":Ljava/lang/Throwable;
    :goto_7e
    const-string/jumbo v7, "starting NetworkStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v127

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2e

    .line 987
    .end local v127    # "e":Ljava/lang/Throwable;
    :catch_21
    move-exception v127

    move-object/from16 v25, v169

    .line 988
    .end local v169    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v25    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v127    # "e":Ljava/lang/Throwable;
    :goto_7f
    const-string/jumbo v7, "starting NetworkPolicy Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v127

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2f

    .line 995
    .end local v127    # "e":Ljava/lang/Throwable;
    :catch_22
    move-exception v127

    .line 996
    .restart local v127    # "e":Ljava/lang/Throwable;
    :goto_80
    const-string/jumbo v7, "starting Wi-Fi P2pService"

    move-object/from16 v0, p0

    move-object/from16 v1, v127

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_30

    .line 1003
    .end local v127    # "e":Ljava/lang/Throwable;
    :catch_23
    move-exception v127

    .line 1004
    .restart local v127    # "e":Ljava/lang/Throwable;
    :goto_81
    const-string/jumbo v7, "starting Wi-Fi Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v127

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_31

    .line 1012
    .end local v127    # "e":Ljava/lang/Throwable;
    :catch_24
    move-exception v127

    .line 1013
    .restart local v127    # "e":Ljava/lang/Throwable;
    :goto_82
    const-string/jumbo v7, "starting MSAP Wi-Fi Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v127

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_32

    .line 1027
    .end local v127    # "e":Ljava/lang/Throwable;
    :catch_25
    move-exception v127

    .line 1028
    .restart local v127    # "e":Ljava/lang/Throwable;
    :goto_83
    const-string/jumbo v7, "starting Connectivity Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v127

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_33

    .line 1079
    .end local v127    # "e":Ljava/lang/Throwable;
    :catch_26
    move-exception v127

    .line 1080
    .restart local v127    # "e":Ljava/lang/Throwable;
    const-string/jumbo v7, "starting Service Discovery Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v127

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_34

    .line 1089
    .end local v127    # "e":Ljava/lang/Throwable;
    :catch_27
    move-exception v127

    .line 1090
    .restart local v127    # "e":Ljava/lang/Throwable;
    const-string/jumbo v7, "starting UpdateLockService"

    move-object/from16 v0, p0

    move-object/from16 v1, v127

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_35

    .line 1110
    .end local v127    # "e":Ljava/lang/Throwable;
    :catch_28
    move-exception v127

    .line 1111
    .restart local v127    # "e":Ljava/lang/Throwable;
    const-string v7, "making Account Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v127

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_36

    .line 1119
    .end local v127    # "e":Ljava/lang/Throwable;
    :catch_29
    move-exception v127

    .line 1120
    .restart local v127    # "e":Ljava/lang/Throwable;
    const-string v7, "making Content Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v127

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_37

    .line 1128
    .end local v127    # "e":Ljava/lang/Throwable;
    :catch_2a
    move-exception v127

    .line 1129
    .restart local v127    # "e":Ljava/lang/Throwable;
    :goto_84
    const-string/jumbo v7, "starting Notification Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v127

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_38

    .line 1136
    .end local v127    # "e":Ljava/lang/Throwable;
    :catch_2b
    move-exception v127

    .line 1137
    .restart local v127    # "e":Ljava/lang/Throwable;
    const-string/jumbo v7, "starting DeviceStorageMonitor service"

    move-object/from16 v0, p0

    move-object/from16 v1, v127

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_39

    .line 1145
    .end local v127    # "e":Ljava/lang/Throwable;
    :catch_2c
    move-exception v127

    .line 1146
    .restart local v127    # "e":Ljava/lang/Throwable;
    :goto_85
    const-string/jumbo v7, "starting Location Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v127

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3a

    .line 1153
    .end local v127    # "e":Ljava/lang/Throwable;
    :catch_2d
    move-exception v127

    .line 1154
    .restart local v127    # "e":Ljava/lang/Throwable;
    :goto_86
    const-string/jumbo v7, "starting Country Detector"

    move-object/from16 v0, p0

    move-object/from16 v1, v127

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3b

    .line 1196
    .end local v127    # "e":Ljava/lang/Throwable;
    :catch_2e
    move-exception v127

    .line 1197
    .restart local v127    # "e":Ljava/lang/Throwable;
    const-string v7, "SystemServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Loading SLocation has been failed, error or not support"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual/range {v127 .. v127}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3c

    .line 1205
    .end local v127    # "e":Ljava/lang/Throwable;
    :catch_2f
    move-exception v127

    .line 1206
    .restart local v127    # "e":Ljava/lang/Throwable;
    const-string/jumbo v7, "starting Search Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v127

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3d

    .line 1216
    .end local v127    # "e":Ljava/lang/Throwable;
    :cond_54
    :try_start_9e
    const-string v7, "SystemServer"

    const-string v9, "Spell Manager Service disabled"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9e
    .catch Ljava/lang/Throwable; {:try_start_9e .. :try_end_9e} :catch_30

    goto/16 :goto_3e

    .line 1218
    :catch_30
    move-exception v127

    .line 1219
    .restart local v127    # "e":Ljava/lang/Throwable;
    const-string v7, "SystemServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "starting Spell Service failed: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v127

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3e

    .line 1226
    .end local v127    # "e":Ljava/lang/Throwable;
    :catch_31
    move-exception v127

    .line 1227
    .restart local v127    # "e":Ljava/lang/Throwable;
    const-string/jumbo v7, "starting DropBoxManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v127

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3f

    .line 1238
    .end local v127    # "e":Ljava/lang/Throwable;
    :catch_32
    move-exception v127

    .line 1239
    .restart local v127    # "e":Ljava/lang/Throwable;
    :goto_87
    const-string/jumbo v7, "starting Wallpaper Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v127

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_40

    .line 1247
    .end local v127    # "e":Ljava/lang/Throwable;
    :catch_33
    move-exception v127

    .line 1248
    .restart local v127    # "e":Ljava/lang/Throwable;
    const-string/jumbo v7, "starting Audio Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v127

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_41

    .line 1256
    .end local v127    # "e":Ljava/lang/Throwable;
    :catch_34
    move-exception v127

    .line 1257
    .restart local v127    # "e":Ljava/lang/Throwable;
    const-string/jumbo v7, "starting DockObserver"

    move-object/from16 v0, p0

    move-object/from16 v1, v127

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_42

    .line 1267
    .end local v127    # "e":Ljava/lang/Throwable;
    :catch_35
    move-exception v127

    .line 1268
    .restart local v127    # "e":Ljava/lang/Throwable;
    const-string/jumbo v7, "starting WiredAccessoryManager"

    move-object/from16 v0, p0

    move-object/from16 v1, v127

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_43

    .line 1278
    .end local v127    # "e":Ljava/lang/Throwable;
    :catch_36
    move-exception v127

    .line 1279
    .restart local v127    # "e":Ljava/lang/Throwable;
    :goto_88
    const-string/jumbo v7, "starting UsbService"

    move-object/from16 v0, p0

    move-object/from16 v1, v127

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_44

    .line 1287
    .end local v127    # "e":Ljava/lang/Throwable;
    :catch_37
    move-exception v127

    .line 1288
    .restart local v127    # "e":Ljava/lang/Throwable;
    :goto_89
    const-string v7, "SystemServer"

    const-string v9, "Failure starting SerialService"

    move-object/from16 v0, v127

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_45

    .line 1295
    .end local v127    # "e":Ljava/lang/Throwable;
    :catch_38
    move-exception v127

    .line 1296
    .restart local v127    # "e":Ljava/lang/Throwable;
    const-string/jumbo v7, "starting TwilightService"

    move-object/from16 v0, p0

    move-object/from16 v1, v127

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_46

    .line 1303
    .end local v127    # "e":Ljava/lang/Throwable;
    :catch_39
    move-exception v127

    .line 1304
    .restart local v127    # "e":Ljava/lang/Throwable;
    const-string/jumbo v7, "starting UiModeManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v127

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_47

    .line 1313
    .end local v127    # "e":Ljava/lang/Throwable;
    :catch_3a
    move-exception v127

    .line 1314
    .restart local v127    # "e":Ljava/lang/Throwable;
    const-string v7, "Failue staring KiesUsbObserver Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v127

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_48

    .line 1324
    .end local v127    # "e":Ljava/lang/Throwable;
    :catch_3b
    move-exception v127

    .line 1325
    .restart local v127    # "e":Ljava/lang/Throwable;
    const-string v7, "SystemServer"

    const-string v9, "Failure starting Backup Service"

    move-object/from16 v0, v127

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_49

    .line 1332
    .end local v127    # "e":Ljava/lang/Throwable;
    :catch_3c
    move-exception v127

    .line 1333
    .restart local v127    # "e":Ljava/lang/Throwable;
    :goto_8a
    const-string/jumbo v7, "starting AppWidget Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v127

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4a

    .line 1339
    .end local v127    # "e":Ljava/lang/Throwable;
    :catch_3d
    move-exception v127

    .line 1340
    .restart local v127    # "e":Ljava/lang/Throwable;
    const-string/jumbo v7, "starting Recognition Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v127

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4b

    .line 1369
    .end local v127    # "e":Ljava/lang/Throwable;
    .restart local v69    # "SecEDSEnable":Ljava/lang/String;
    .restart local v128    # "edsclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_55
    :try_start_9f
    const-string v7, "SystemServer"

    const-string v9, "edsclass Service exist"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1371
    const/4 v7, 0x1

    new-array v0, v7, [Ljava/lang/Class;

    move-object/from16 v76, v0

    .line 1373
    .local v76, "arg":[Ljava/lang/Class;
    const/4 v7, 0x0

    const-class v9, Landroid/content/Context;

    aput-object v9, v76, v7

    .line 1375
    move-object/from16 v0, v128

    move-object/from16 v1, v76

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v96

    .line 1377
    .local v96, "constructor":Ljava/lang/reflect/Constructor;
    const-string v9, "SecExternalDisplayService"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v5, v7, v10

    move-object/from16 v0, v96

    invoke-virtual {v0, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/IBinder;

    invoke-static {v9, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_9f
    .catch Ljava/lang/Throwable; {:try_start_9f .. :try_end_9f} :catch_3e

    goto/16 :goto_4c

    .line 1380
    .end local v76    # "arg":[Ljava/lang/Class;
    .end local v96    # "constructor":Ljava/lang/reflect/Constructor;
    .end local v128    # "edsclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_3e
    move-exception v127

    .line 1382
    .restart local v127    # "e":Ljava/lang/Throwable;
    const-string v7, "SystemServer"

    const-string v9, "Failure starting eds Service"

    move-object/from16 v0, v127

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4c

    .line 1390
    .end local v127    # "e":Ljava/lang/Throwable;
    :catch_3f
    move-exception v127

    .line 1391
    .restart local v127    # "e":Ljava/lang/Throwable;
    const-string/jumbo v7, "starting DiskStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v127

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4d

    .line 1424
    .end local v127    # "e":Ljava/lang/Throwable;
    :catch_40
    move-exception v127

    .line 1425
    .restart local v127    # "e":Ljava/lang/Throwable;
    const-string/jumbo v7, "starting SpenGestureManagerService Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v127

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4e

    .line 1433
    .end local v127    # "e":Ljava/lang/Throwable;
    :catch_41
    move-exception v127

    .line 1434
    .restart local v127    # "e":Ljava/lang/Throwable;
    const-string/jumbo v7, "starting PalmMotion Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v127

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4f

    .line 1443
    .end local v127    # "e":Ljava/lang/Throwable;
    :catch_42
    move-exception v127

    .line 1444
    .restart local v127    # "e":Ljava/lang/Throwable;
    const-string/jumbo v7, "starting MagazineCardManagerService Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v127

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_50

    .line 1455
    .end local v127    # "e":Ljava/lang/Throwable;
    :catch_43
    move-exception v127

    .line 1456
    .restart local v127    # "e":Ljava/lang/Throwable;
    const-string/jumbo v7, "starting CocktailBarManagerService Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v127

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_51

    .line 1467
    .end local v127    # "e":Ljava/lang/Throwable;
    :catch_44
    move-exception v127

    .line 1468
    .restart local v127    # "e":Ljava/lang/Throwable;
    const-string/jumbo v7, "starting SamplingProfiler Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v127

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_52

    .line 1475
    .end local v127    # "e":Ljava/lang/Throwable;
    :catch_45
    move-exception v127

    .line 1476
    .restart local v127    # "e":Ljava/lang/Throwable;
    const-string/jumbo v7, "starting NetworkTimeUpdate service"

    move-object/from16 v0, p0

    move-object/from16 v1, v127

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_53

    .line 1511
    .end local v127    # "e":Ljava/lang/Throwable;
    :catch_46
    move-exception v127

    .line 1512
    .restart local v127    # "e":Ljava/lang/Throwable;
    :goto_8b
    const-string/jumbo v7, "starting CommonTimeManagementService service"

    move-object/from16 v0, p0

    move-object/from16 v1, v127

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_54

    .line 1520
    .end local v127    # "e":Ljava/lang/Throwable;
    :catch_47
    move-exception v127

    .line 1521
    .restart local v127    # "e":Ljava/lang/Throwable;
    const-string/jumbo v7, "starting CertBlacklister"

    move-object/from16 v0, p0

    move-object/from16 v1, v127

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_55

    .line 1532
    .end local v127    # "e":Ljava/lang/Throwable;
    :catch_48
    move-exception v127

    .line 1533
    .restart local v127    # "e":Ljava/lang/Throwable;
    :goto_8c
    const-string/jumbo v7, "starting DreamManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v127

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_56

    .line 1541
    .end local v127    # "e":Ljava/lang/Throwable;
    :catch_49
    move-exception v127

    .line 1542
    .restart local v127    # "e":Ljava/lang/Throwable;
    const-string v7, "SystemServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failure starting TranscloudService "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual/range {v127 .. v127}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_57

    .line 1551
    .end local v127    # "e":Ljava/lang/Throwable;
    :catch_4a
    move-exception v127

    .line 1552
    .restart local v127    # "e":Ljava/lang/Throwable;
    :goto_8d
    const-string/jumbo v7, "starting AssetAtlasService"

    move-object/from16 v0, p0

    move-object/from16 v1, v127

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_58

    .line 1559
    .end local v127    # "e":Ljava/lang/Throwable;
    :catch_4b
    move-exception v127

    .line 1560
    .restart local v127    # "e":Ljava/lang/Throwable;
    const-string/jumbo v7, "starting IdleMaintenanceService"

    move-object/from16 v0, p0

    move-object/from16 v1, v127

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_59

    .line 1571
    .end local v127    # "e":Ljava/lang/Throwable;
    :catch_4c
    move-exception v127

    .line 1572
    .restart local v127    # "e":Ljava/lang/Throwable;
    const-string v7, "SystemServer"

    const-string v9, "Failure starting Absolute Persistence Service"

    move-object/from16 v0, v127

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5a

    .line 1580
    .end local v127    # "e":Ljava/lang/Throwable;
    :catch_4d
    move-exception v127

    .line 1581
    .restart local v127    # "e":Ljava/lang/Throwable;
    :goto_8e
    const-string/jumbo v7, "starting Print Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v127

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_5b

    .line 1589
    .end local v127    # "e":Ljava/lang/Throwable;
    :catch_4e
    move-exception v127

    .line 1590
    .restart local v127    # "e":Ljava/lang/Throwable;
    :goto_8f
    const-string/jumbo v7, "starting MediaRouterService"

    move-object/from16 v0, p0

    move-object/from16 v1, v127

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_5c

    .line 1632
    .end local v127    # "e":Ljava/lang/Throwable;
    .restart local v177    # "packageMgr":Landroid/content/pm/PackageManager;
    :catch_4f
    move-exception v127

    .line 1633
    .restart local v127    # "e":Ljava/lang/Throwable;
    const-string v7, "SystemServer"

    const-string v9, "Failure starting MiniModeAppManager Service"

    move-object/from16 v0, v127

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5d

    .line 1645
    .end local v127    # "e":Ljava/lang/Throwable;
    :catch_50
    move-exception v127

    .line 1646
    .restart local v127    # "e":Ljava/lang/Throwable;
    const-string v7, "SystemServer"

    const-string v9, "Failure starting BarBeam Service"

    move-object/from16 v0, v127

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5e

    .line 1654
    .end local v127    # "e":Ljava/lang/Throwable;
    :catch_51
    move-exception v127

    .line 1655
    .restart local v127    # "e":Ljava/lang/Throwable;
    const-string v7, "SystemServer"

    const-string v9, "Failure starting Motion Recognition Service"

    move-object/from16 v0, v127

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5f

    .line 1662
    .end local v127    # "e":Ljava/lang/Throwable;
    :catch_52
    move-exception v127

    .line 1663
    .restart local v127    # "e":Ljava/lang/Throwable;
    const-string v7, "SystemServer"

    const-string v9, "Failure starting VoIPInterfaceManager Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_60

    .line 1674
    .end local v127    # "e":Ljava/lang/Throwable;
    :catch_53
    move-exception v127

    .line 1675
    .restart local v127    # "e":Ljava/lang/Throwable;
    const-string v7, "SystemServer"

    const-string v9, "Failure starting CoverManager Service"

    move-object/from16 v0, v127

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_61

    .line 1695
    .end local v127    # "e":Ljava/lang/Throwable;
    :catch_54
    move-exception v127

    .line 1696
    .local v127, "e":Ljava/lang/Exception;
    const-string v7, "SystemServer"

    const-string v9, "Failure starting HealthCoverService"

    move-object/from16 v0, v127

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_62

    .line 1717
    .end local v69    # "SecEDSEnable":Ljava/lang/String;
    .end local v127    # "e":Ljava/lang/Exception;
    .end local v155    # "mdsEnable":Ljava/lang/String;
    .end local v177    # "packageMgr":Landroid/content/pm/PackageManager;
    :catch_55
    move-exception v127

    .line 1718
    .restart local v127    # "e":Ljava/lang/Exception;
    const-string v7, "Fail to start SmartFaceService"

    move-object/from16 v0, p0

    move-object/from16 v1, v127

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_63

    .line 1729
    .end local v127    # "e":Ljava/lang/Exception;
    :catch_56
    move-exception v127

    .line 1730
    .local v127, "e":Ljava/lang/Throwable;
    const-string v7, "Failure starting SamsungAppDisablerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v127

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_64

    .line 1778
    .end local v127    # "e":Ljava/lang/Throwable;
    .restart local v47    # "safeMode":Z
    :cond_56
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v7

    invoke-virtual {v7}, Ldalvik/system/VMRuntime;->startJitCompilation()V

    goto/16 :goto_65

    .line 1786
    :catch_57
    move-exception v127

    .line 1787
    .restart local v127    # "e":Ljava/lang/Throwable;
    const-string v7, "making Vibrator Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v127

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_66

    .line 1794
    .end local v127    # "e":Ljava/lang/Throwable;
    :catch_58
    move-exception v127

    .line 1795
    .restart local v127    # "e":Ljava/lang/Throwable;
    const-string v7, "making Lock Settings Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v127

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_67

    .line 1803
    .end local v127    # "e":Ljava/lang/Throwable;
    :catch_59
    move-exception v127

    .line 1804
    .restart local v127    # "e":Ljava/lang/Throwable;
    const-string v7, "making Device Policy Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v127

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_68

    .line 1820
    .end local v127    # "e":Ljava/lang/Throwable;
    :catch_5a
    move-exception v127

    .line 1821
    .restart local v127    # "e":Ljava/lang/Throwable;
    const-string v7, "making Notification Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v127

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_69

    .line 1828
    .end local v127    # "e":Ljava/lang/Throwable;
    :catch_5b
    move-exception v127

    .line 1829
    .restart local v127    # "e":Ljava/lang/Throwable;
    const-string v7, "making Window Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v127

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_6a

    .line 1849
    .end local v127    # "e":Ljava/lang/Throwable;
    .restart local v93    # "config":Landroid/content/res/Configuration;
    .restart local v158    # "metrics":Landroid/util/DisplayMetrics;
    .restart local v225    # "w":Landroid/view/WindowManager;
    :catch_5c
    move-exception v127

    .line 1850
    .restart local v127    # "e":Ljava/lang/Throwable;
    const-string v7, "making Power Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v127

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_6b

    .line 1857
    .end local v127    # "e":Ljava/lang/Throwable;
    :catch_5d
    move-exception v127

    .line 1858
    .restart local v127    # "e":Ljava/lang/Throwable;
    const-string v7, "making Lights Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v127

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_6c

    .line 1866
    .end local v127    # "e":Ljava/lang/Throwable;
    :catch_5e
    move-exception v127

    .line 1867
    .restart local v127    # "e":Ljava/lang/Throwable;
    const-string v7, "making Adaptive Display Color Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v127

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_6d

    .line 1874
    .end local v127    # "e":Ljava/lang/Throwable;
    :catch_5f
    move-exception v127

    .line 1875
    .restart local v127    # "e":Ljava/lang/Throwable;
    const-string v7, "making Package Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v127

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_6e

    .line 1881
    .end local v127    # "e":Ljava/lang/Throwable;
    :catch_60
    move-exception v127

    .line 1882
    .restart local v127    # "e":Ljava/lang/Throwable;
    const-string v7, "making Display Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v127

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_6f

    .line 1889
    .end local v127    # "e":Ljava/lang/Throwable;
    .restart local v222    # "versionInfo":Landroid/os/Bundle;
    :catch_61
    move-exception v127

    .line 1890
    .restart local v127    # "e":Ljava/lang/Throwable;
    const-string v7, "making Persona Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v127

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_70

    .line 498
    .end local v6    # "lights":Lcom/android/server/LightsService;
    .end local v8    # "battery":Lcom/android/server/BatteryService;
    .end local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v25    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v47    # "safeMode":Z
    .end local v74    # "appWidget":Lcom/android/server/AppWidgetService;
    .end local v77    # "atlas":Lcom/android/server/AssetAtlasService;
    .end local v93    # "config":Landroid/content/res/Configuration;
    .end local v103    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .end local v110    # "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    .end local v125    # "dreamy":Lcom/android/server/dreams/DreamManagerService;
    .end local v127    # "e":Ljava/lang/Throwable;
    .end local v129    # "enterprisePolicy":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .end local v140    # "imm":Lcom/android/server/InputMethodManagerService;
    .end local v149    # "location":Lcom/android/server/LocationManagerService;
    .end local v151    # "lockSettings":Lcom/android/server/LockSettingsService;
    .end local v156    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .end local v158    # "metrics":Landroid/util/DisplayMetrics;
    .end local v173    # "notification":Lcom/android/server/NotificationManagerService;
    .end local v182    # "printManager":Lcom/android/server/print/PrintManagerService;
    .end local v191    # "sLocation":Landroid/os/IBinder;
    .end local v201    # "statusBar":Lcom/android/server/StatusBarManagerService;
    .end local v212    # "transcloud":Lcom/android/server/TranscloudMonitorService;
    .end local v214    # "tsms":Lcom/android/server/TextServicesManagerService;
    .end local v222    # "versionInfo":Landroid/os/Bundle;
    .end local v225    # "w":Landroid/view/WindowManager;
    .end local v226    # "wallpaper":Lcom/android/server/WallpaperManagerService;
    .restart local v72    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v81    # "battery":Lcom/android/server/BatteryService;
    .restart local v106    # "cryptState":Ljava/lang/String;
    .restart local v142    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v148    # "lights":Lcom/android/server/LightsService;
    .restart local v169    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v205    # "timaEnabled":Z
    :catch_62
    move-exception v7

    goto/16 :goto_c

    .line 1589
    .end local v72    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v81    # "battery":Lcom/android/server/BatteryService;
    .end local v106    # "cryptState":Ljava/lang/String;
    .end local v142    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v148    # "lights":Lcom/android/server/LightsService;
    .end local v169    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v205    # "timaEnabled":Z
    .restart local v6    # "lights":Lcom/android/server/LightsService;
    .restart local v8    # "battery":Lcom/android/server/BatteryService;
    .restart local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v25    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v69    # "SecEDSEnable":Ljava/lang/String;
    .restart local v74    # "appWidget":Lcom/android/server/AppWidgetService;
    .restart local v77    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v103    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v110    # "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    .restart local v125    # "dreamy":Lcom/android/server/dreams/DreamManagerService;
    .restart local v129    # "enterprisePolicy":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .restart local v140    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v149    # "location":Lcom/android/server/LocationManagerService;
    .restart local v151    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v155    # "mdsEnable":Ljava/lang/String;
    .restart local v157    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v173    # "notification":Lcom/android/server/NotificationManagerService;
    .restart local v182    # "printManager":Lcom/android/server/print/PrintManagerService;
    .restart local v191    # "sLocation":Landroid/os/IBinder;
    .restart local v201    # "statusBar":Lcom/android/server/StatusBarManagerService;
    .restart local v212    # "transcloud":Lcom/android/server/TranscloudMonitorService;
    .restart local v214    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v226    # "wallpaper":Lcom/android/server/WallpaperManagerService;
    :catch_63
    move-exception v127

    move-object/from16 v156, v157

    .end local v157    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v156    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    goto/16 :goto_8f

    .line 1580
    .end local v182    # "printManager":Lcom/android/server/print/PrintManagerService;
    .restart local v183    # "printManager":Lcom/android/server/print/PrintManagerService;
    :catch_64
    move-exception v127

    move-object/from16 v182, v183

    .end local v183    # "printManager":Lcom/android/server/print/PrintManagerService;
    .restart local v182    # "printManager":Lcom/android/server/print/PrintManagerService;
    goto/16 :goto_8e

    .line 1551
    .end local v77    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v78    # "atlas":Lcom/android/server/AssetAtlasService;
    :catch_65
    move-exception v127

    move-object/from16 v77, v78

    .end local v78    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v77    # "atlas":Lcom/android/server/AssetAtlasService;
    goto/16 :goto_8d

    .line 1532
    .end local v125    # "dreamy":Lcom/android/server/dreams/DreamManagerService;
    .restart local v126    # "dreamy":Lcom/android/server/dreams/DreamManagerService;
    :catch_66
    move-exception v127

    move-object/from16 v125, v126

    .end local v126    # "dreamy":Lcom/android/server/dreams/DreamManagerService;
    .restart local v125    # "dreamy":Lcom/android/server/dreams/DreamManagerService;
    goto/16 :goto_8c

    .line 1511
    .end local v91    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v92    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    :catch_67
    move-exception v127

    move-object/from16 v91, v92

    .end local v92    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v91    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    goto/16 :goto_8b

    .line 1332
    .end local v69    # "SecEDSEnable":Ljava/lang/String;
    .end local v74    # "appWidget":Lcom/android/server/AppWidgetService;
    .restart local v75    # "appWidget":Lcom/android/server/AppWidgetService;
    :catch_68
    move-exception v127

    move-object/from16 v74, v75

    .end local v75    # "appWidget":Lcom/android/server/AppWidgetService;
    .restart local v74    # "appWidget":Lcom/android/server/AppWidgetService;
    goto/16 :goto_8a

    .line 1287
    .end local v194    # "serial":Lcom/android/server/SerialService;
    .restart local v195    # "serial":Lcom/android/server/SerialService;
    :catch_69
    move-exception v127

    move-object/from16 v194, v195

    .end local v195    # "serial":Lcom/android/server/SerialService;
    .restart local v194    # "serial":Lcom/android/server/SerialService;
    goto/16 :goto_89

    .line 1278
    .end local v220    # "usb":Lcom/android/server/usb/UsbService;
    .restart local v221    # "usb":Lcom/android/server/usb/UsbService;
    :catch_6a
    move-exception v127

    move-object/from16 v220, v221

    .end local v221    # "usb":Lcom/android/server/usb/UsbService;
    .restart local v220    # "usb":Lcom/android/server/usb/UsbService;
    goto/16 :goto_88

    .line 1238
    .end local v226    # "wallpaper":Lcom/android/server/WallpaperManagerService;
    .restart local v227    # "wallpaper":Lcom/android/server/WallpaperManagerService;
    :catch_6b
    move-exception v127

    move-object/from16 v226, v227

    .end local v227    # "wallpaper":Lcom/android/server/WallpaperManagerService;
    .restart local v226    # "wallpaper":Lcom/android/server/WallpaperManagerService;
    goto/16 :goto_87

    .line 1153
    .end local v103    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v104    # "countryDetector":Lcom/android/server/CountryDetectorService;
    :catch_6c
    move-exception v127

    move-object/from16 v103, v104

    .end local v104    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v103    # "countryDetector":Lcom/android/server/CountryDetectorService;
    goto/16 :goto_86

    .line 1145
    .end local v149    # "location":Lcom/android/server/LocationManagerService;
    .restart local v150    # "location":Lcom/android/server/LocationManagerService;
    :catch_6d
    move-exception v127

    move-object/from16 v149, v150

    .end local v150    # "location":Lcom/android/server/LocationManagerService;
    .restart local v149    # "location":Lcom/android/server/LocationManagerService;
    goto/16 :goto_85

    .line 1128
    .end local v173    # "notification":Lcom/android/server/NotificationManagerService;
    .restart local v174    # "notification":Lcom/android/server/NotificationManagerService;
    :catch_6e
    move-exception v127

    move-object/from16 v173, v174

    .end local v174    # "notification":Lcom/android/server/NotificationManagerService;
    .restart local v173    # "notification":Lcom/android/server/NotificationManagerService;
    goto/16 :goto_84

    .line 1027
    .end local v94    # "connectivity":Lcom/android/server/ConnectivityService;
    .restart local v95    # "connectivity":Lcom/android/server/ConnectivityService;
    :catch_6f
    move-exception v127

    move-object/from16 v94, v95

    .end local v95    # "connectivity":Lcom/android/server/ConnectivityService;
    .restart local v94    # "connectivity":Lcom/android/server/ConnectivityService;
    goto/16 :goto_83

    .line 1012
    .end local v164    # "msapwifi":Lcom/android/server/MsapWifiService;
    .restart local v165    # "msapwifi":Lcom/android/server/MsapWifiService;
    :catch_70
    move-exception v127

    move-object/from16 v164, v165

    .end local v165    # "msapwifi":Lcom/android/server/MsapWifiService;
    .restart local v164    # "msapwifi":Lcom/android/server/MsapWifiService;
    goto/16 :goto_82

    .line 1003
    .end local v228    # "wifi":Lcom/android/server/wifi/WifiService;
    .restart local v229    # "wifi":Lcom/android/server/wifi/WifiService;
    :catch_71
    move-exception v127

    move-object/from16 v228, v229

    .end local v229    # "wifi":Lcom/android/server/wifi/WifiService;
    .restart local v228    # "wifi":Lcom/android/server/wifi/WifiService;
    goto/16 :goto_81

    .line 995
    .end local v231    # "wifiP2p":Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v232    # "wifiP2p":Landroid/net/wifi/p2p/WifiP2pService;
    :catch_72
    move-exception v127

    move-object/from16 v231, v232

    .end local v232    # "wifiP2p":Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v231    # "wifiP2p":Landroid/net/wifi/p2p/WifiP2pService;
    goto/16 :goto_80

    .line 987
    :catch_73
    move-exception v127

    goto/16 :goto_7f

    .line 977
    .end local v25    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v29    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .restart local v169    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v170    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    :catch_74
    move-exception v127

    move-object/from16 v29, v170

    .end local v170    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .restart local v29    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    goto/16 :goto_7e

    .line 967
    .end local v214    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v215    # "tsms":Lcom/android/server/TextServicesManagerService;
    :catch_75
    move-exception v127

    move-object/from16 v214, v215

    .end local v215    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v214    # "tsms":Lcom/android/server/TextServicesManagerService;
    goto/16 :goto_7d

    .line 925
    .end local v201    # "statusBar":Lcom/android/server/StatusBarManagerService;
    .restart local v202    # "statusBar":Lcom/android/server/StatusBarManagerService;
    :catch_76
    move-exception v127

    move-object/from16 v201, v202

    .end local v202    # "statusBar":Lcom/android/server/StatusBarManagerService;
    .restart local v201    # "statusBar":Lcom/android/server/StatusBarManagerService;
    goto/16 :goto_7c

    .line 915
    .end local v153    # "mHMS":Lcom/android/server/HarmonyEASService;
    .restart local v154    # "mHMS":Lcom/android/server/HarmonyEASService;
    :catch_77
    move-exception v127

    move-object/from16 v153, v154

    .end local v154    # "mHMS":Lcom/android/server/HarmonyEASService;
    .restart local v153    # "mHMS":Lcom/android/server/HarmonyEASService;
    goto/16 :goto_7b

    .line 903
    .end local v129    # "enterprisePolicy":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .restart local v130    # "enterprisePolicy":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .restart local v222    # "versionInfo":Landroid/os/Bundle;
    :catch_78
    move-exception v127

    move-object/from16 v129, v130

    .end local v130    # "enterprisePolicy":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .restart local v129    # "enterprisePolicy":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    goto/16 :goto_7a

    .line 874
    .end local v151    # "lockSettings":Lcom/android/server/LockSettingsService;
    .end local v222    # "versionInfo":Landroid/os/Bundle;
    .restart local v152    # "lockSettings":Lcom/android/server/LockSettingsService;
    :catch_79
    move-exception v127

    move-object/from16 v151, v152

    .end local v152    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v151    # "lockSettings":Lcom/android/server/LockSettingsService;
    goto/16 :goto_79

    .line 841
    .end local v155    # "mdsEnable":Ljava/lang/String;
    .end local v162    # "mountService":Lcom/android/server/MountService;
    .restart local v163    # "mountService":Lcom/android/server/MountService;
    :catch_7a
    move-exception v127

    move-object/from16 v162, v163

    .end local v163    # "mountService":Lcom/android/server/MountService;
    .restart local v162    # "mountService":Lcom/android/server/MountService;
    goto/16 :goto_78

    .line 827
    .end local v110    # "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    .restart local v111    # "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    :catch_7b
    move-exception v127

    move-object/from16 v110, v111

    .end local v111    # "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    .restart local v110    # "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    goto/16 :goto_77

    .line 809
    :catch_7c
    move-exception v7

    goto/16 :goto_20

    .line 775
    .end local v140    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v141    # "imm":Lcom/android/server/InputMethodManagerService;
    :catch_7d
    move-exception v127

    move-object/from16 v140, v141

    .end local v141    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v140    # "imm":Lcom/android/server/InputMethodManagerService;
    goto/16 :goto_76

    .line 740
    .end local v6    # "lights":Lcom/android/server/LightsService;
    .end local v8    # "battery":Lcom/android/server/BatteryService;
    .end local v11    # "display":Lcom/android/server/display/DisplayManagerService;
    .end local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v74    # "appWidget":Lcom/android/server/AppWidgetService;
    .end local v77    # "atlas":Lcom/android/server/AssetAtlasService;
    .end local v103    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .end local v110    # "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    .end local v125    # "dreamy":Lcom/android/server/dreams/DreamManagerService;
    .end local v129    # "enterprisePolicy":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .end local v140    # "imm":Lcom/android/server/InputMethodManagerService;
    .end local v149    # "location":Lcom/android/server/LocationManagerService;
    .end local v151    # "lockSettings":Lcom/android/server/LockSettingsService;
    .end local v156    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .end local v173    # "notification":Lcom/android/server/NotificationManagerService;
    .end local v182    # "printManager":Lcom/android/server/print/PrintManagerService;
    .end local v191    # "sLocation":Landroid/os/IBinder;
    .end local v201    # "statusBar":Lcom/android/server/StatusBarManagerService;
    .end local v212    # "transcloud":Lcom/android/server/TranscloudMonitorService;
    .end local v214    # "tsms":Lcom/android/server/TextServicesManagerService;
    .end local v226    # "wallpaper":Lcom/android/server/WallpaperManagerService;
    .restart local v72    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v81    # "battery":Lcom/android/server/BatteryService;
    .restart local v120    # "display":Lcom/android/server/display/DisplayManagerService;
    .restart local v142    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v148    # "lights":Lcom/android/server/LightsService;
    :catch_7e
    move-exception v127

    move-object/from16 v20, v142

    .end local v142    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v16, v72

    .end local v72    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v81

    .end local v81    # "battery":Lcom/android/server/BatteryService;
    .restart local v8    # "battery":Lcom/android/server/BatteryService;
    move-object/from16 v11, v120

    .end local v120    # "display":Lcom/android/server/display/DisplayManagerService;
    .restart local v11    # "display":Lcom/android/server/display/DisplayManagerService;
    move-object/from16 v6, v148

    .end local v148    # "lights":Lcom/android/server/LightsService;
    .restart local v6    # "lights":Lcom/android/server/LightsService;
    goto/16 :goto_72

    .end local v6    # "lights":Lcom/android/server/LightsService;
    .end local v8    # "battery":Lcom/android/server/BatteryService;
    .end local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v203    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v72    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v81    # "battery":Lcom/android/server/BatteryService;
    .restart local v142    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v148    # "lights":Lcom/android/server/LightsService;
    .restart local v204    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :catch_7f
    move-exception v127

    move-object/from16 v203, v204

    .end local v204    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v203    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v20, v142

    .end local v142    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v16, v72

    .end local v72    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v81

    .end local v81    # "battery":Lcom/android/server/BatteryService;
    .restart local v8    # "battery":Lcom/android/server/BatteryService;
    move-object/from16 v6, v148

    .end local v148    # "lights":Lcom/android/server/LightsService;
    .restart local v6    # "lights":Lcom/android/server/LightsService;
    goto/16 :goto_72

    .end local v6    # "lights":Lcom/android/server/LightsService;
    .end local v8    # "battery":Lcom/android/server/BatteryService;
    .end local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v166    # "msimTelephonyRegistry":Lcom/android/server/MSimTelephonyRegistry;
    .restart local v72    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v81    # "battery":Lcom/android/server/BatteryService;
    .restart local v142    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v148    # "lights":Lcom/android/server/LightsService;
    .restart local v167    # "msimTelephonyRegistry":Lcom/android/server/MSimTelephonyRegistry;
    :catch_80
    move-exception v127

    move-object/from16 v166, v167

    .end local v167    # "msimTelephonyRegistry":Lcom/android/server/MSimTelephonyRegistry;
    .restart local v166    # "msimTelephonyRegistry":Lcom/android/server/MSimTelephonyRegistry;
    move-object/from16 v20, v142

    .end local v142    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v16, v72

    .end local v72    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v81

    .end local v81    # "battery":Lcom/android/server/BatteryService;
    .restart local v8    # "battery":Lcom/android/server/BatteryService;
    move-object/from16 v6, v148

    .end local v148    # "lights":Lcom/android/server/LightsService;
    .restart local v6    # "lights":Lcom/android/server/LightsService;
    goto/16 :goto_72

    .end local v6    # "lights":Lcom/android/server/LightsService;
    .end local v8    # "battery":Lcom/android/server/BatteryService;
    .end local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v208    # "timaService":Lcom/android/server/TimaService;
    .restart local v72    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v81    # "battery":Lcom/android/server/BatteryService;
    .restart local v106    # "cryptState":Ljava/lang/String;
    .restart local v142    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v148    # "lights":Lcom/android/server/LightsService;
    .restart local v205    # "timaEnabled":Z
    .restart local v209    # "timaService":Lcom/android/server/TimaService;
    :catch_81
    move-exception v127

    move-object/from16 v208, v209

    .end local v209    # "timaService":Lcom/android/server/TimaService;
    .restart local v208    # "timaService":Lcom/android/server/TimaService;
    move-object/from16 v20, v142

    .end local v142    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v16, v72

    .end local v72    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v81

    .end local v81    # "battery":Lcom/android/server/BatteryService;
    .restart local v8    # "battery":Lcom/android/server/BatteryService;
    move-object/from16 v6, v148

    .end local v148    # "lights":Lcom/android/server/LightsService;
    .restart local v6    # "lights":Lcom/android/server/LightsService;
    goto/16 :goto_72

    .end local v6    # "lights":Lcom/android/server/LightsService;
    .end local v8    # "battery":Lcom/android/server/BatteryService;
    .end local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v70    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v71    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v72    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v81    # "battery":Lcom/android/server/BatteryService;
    .restart local v142    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v147    # "knoxVerInfo":Landroid/os/Bundle;
    .restart local v148    # "lights":Lcom/android/server/LightsService;
    .restart local v222    # "versionInfo":Landroid/os/Bundle;
    :catch_82
    move-exception v127

    move-object/from16 v20, v142

    .end local v142    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v16, v72

    .end local v72    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v81

    .end local v81    # "battery":Lcom/android/server/BatteryService;
    .restart local v8    # "battery":Lcom/android/server/BatteryService;
    move-object/from16 v6, v148

    .end local v148    # "lights":Lcom/android/server/LightsService;
    .restart local v6    # "lights":Lcom/android/server/LightsService;
    move-object/from16 v70, v71

    .end local v71    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v70    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    goto/16 :goto_72

    .end local v6    # "lights":Lcom/android/server/LightsService;
    .end local v8    # "battery":Lcom/android/server/BatteryService;
    .end local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v107    # "dEncService":Lcom/android/server/DirEncryptService;
    .restart local v72    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v81    # "battery":Lcom/android/server/BatteryService;
    .restart local v108    # "dEncService":Lcom/android/server/DirEncryptService;
    .restart local v142    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v148    # "lights":Lcom/android/server/LightsService;
    :catch_83
    move-exception v127

    move-object/from16 v107, v108

    .end local v108    # "dEncService":Lcom/android/server/DirEncryptService;
    .restart local v107    # "dEncService":Lcom/android/server/DirEncryptService;
    move-object/from16 v20, v142

    .end local v142    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v16, v72

    .end local v72    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v81

    .end local v81    # "battery":Lcom/android/server/BatteryService;
    .restart local v8    # "battery":Lcom/android/server/BatteryService;
    move-object/from16 v6, v148

    .end local v148    # "lights":Lcom/android/server/LightsService;
    .restart local v6    # "lights":Lcom/android/server/LightsService;
    goto/16 :goto_72

    .end local v6    # "lights":Lcom/android/server/LightsService;
    .end local v8    # "battery":Lcom/android/server/BatteryService;
    .end local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v100    # "containerService":Lcom/sec/knox/container/EnterpriseContainerService;
    .restart local v72    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v81    # "battery":Lcom/android/server/BatteryService;
    .restart local v101    # "containerService":Lcom/sec/knox/container/EnterpriseContainerService;
    .restart local v142    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v148    # "lights":Lcom/android/server/LightsService;
    :catch_84
    move-exception v127

    move-object/from16 v100, v101

    .end local v101    # "containerService":Lcom/sec/knox/container/EnterpriseContainerService;
    .restart local v100    # "containerService":Lcom/sec/knox/container/EnterpriseContainerService;
    move-object/from16 v20, v142

    .end local v142    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v16, v72

    .end local v72    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v81

    .end local v81    # "battery":Lcom/android/server/BatteryService;
    .restart local v8    # "battery":Lcom/android/server/BatteryService;
    move-object/from16 v6, v148

    .end local v148    # "lights":Lcom/android/server/LightsService;
    .restart local v6    # "lights":Lcom/android/server/LightsService;
    goto/16 :goto_72

    .end local v8    # "battery":Lcom/android/server/BatteryService;
    .end local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v72    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v81    # "battery":Lcom/android/server/BatteryService;
    .restart local v142    # "inputManager":Lcom/android/server/input/InputManagerService;
    :catch_85
    move-exception v127

    move-object/from16 v20, v142

    .end local v142    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v16, v72

    .end local v72    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v81

    .end local v81    # "battery":Lcom/android/server/BatteryService;
    .restart local v8    # "battery":Lcom/android/server/BatteryService;
    goto/16 :goto_72

    .end local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v72    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v142    # "inputManager":Lcom/android/server/input/InputManagerService;
    :catch_86
    move-exception v127

    move-object/from16 v20, v142

    .end local v142    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v16, v72

    .end local v72    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    goto/16 :goto_72

    .end local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v98    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v223    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v72    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v79    # "autoMode":Z
    .restart local v84    # "cfmsClass":Ljava/lang/Class;
    .restart local v99    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v142    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v193    # "screenMode":I
    .restart local v211    # "toolbox":Lcom/samsung/android/toolbox/TwToolBoxService;
    .restart local v224    # "vibrator":Lcom/android/server/VibratorService;
    :catch_87
    move-exception v127

    move-object/from16 v98, v99

    .end local v99    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v98    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v20, v142

    .end local v142    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v16, v72

    .end local v72    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    move-object/from16 v223, v224

    .end local v224    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v223    # "vibrator":Lcom/android/server/VibratorService;
    goto/16 :goto_72

    .end local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v98    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v223    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v99    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v142    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v224    # "vibrator":Lcom/android/server/VibratorService;
    :catch_88
    move-exception v127

    move-object/from16 v98, v99

    .end local v99    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v98    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v20, v142

    .end local v142    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v223, v224

    .end local v224    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v223    # "vibrator":Lcom/android/server/VibratorService;
    goto/16 :goto_72

    .end local v82    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    .end local v98    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v223    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v83    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    .restart local v99    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v224    # "vibrator":Lcom/android/server/VibratorService;
    :catch_89
    move-exception v127

    move-object/from16 v98, v99

    .end local v99    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v98    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v82, v83

    .end local v83    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    .restart local v82    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    move-object/from16 v223, v224

    .end local v224    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v223    # "vibrator":Lcom/android/server/VibratorService;
    goto/16 :goto_72

    .end local v98    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v185    # "rcpManagerService":Lcom/android/server/RCPManagerService;
    .end local v223    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v99    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v186    # "rcpManagerService":Lcom/android/server/RCPManagerService;
    .restart local v224    # "vibrator":Lcom/android/server/VibratorService;
    :catch_8a
    move-exception v127

    move-object/from16 v185, v186

    .end local v186    # "rcpManagerService":Lcom/android/server/RCPManagerService;
    .restart local v185    # "rcpManagerService":Lcom/android/server/RCPManagerService;
    move-object/from16 v98, v99

    .end local v99    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v98    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v223, v224

    .end local v224    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v223    # "vibrator":Lcom/android/server/VibratorService;
    goto/16 :goto_72

    .line 735
    .end local v98    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v185    # "rcpManagerService":Lcom/android/server/RCPManagerService;
    .end local v223    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v99    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v186    # "rcpManagerService":Lcom/android/server/RCPManagerService;
    .restart local v224    # "vibrator":Lcom/android/server/VibratorService;
    :catch_8b
    move-exception v127

    move-object/from16 v185, v186

    .end local v186    # "rcpManagerService":Lcom/android/server/RCPManagerService;
    .restart local v185    # "rcpManagerService":Lcom/android/server/RCPManagerService;
    goto/16 :goto_75

    .line 579
    .end local v6    # "lights":Lcom/android/server/LightsService;
    .end local v8    # "battery":Lcom/android/server/BatteryService;
    .end local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v79    # "autoMode":Z
    .end local v84    # "cfmsClass":Ljava/lang/Class;
    .end local v99    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v100    # "containerService":Lcom/sec/knox/container/EnterpriseContainerService;
    .end local v193    # "screenMode":I
    .end local v211    # "toolbox":Lcom/samsung/android/toolbox/TwToolBoxService;
    .end local v224    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v72    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v81    # "battery":Lcom/android/server/BatteryService;
    .restart local v98    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v101    # "containerService":Lcom/sec/knox/container/EnterpriseContainerService;
    .restart local v142    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v148    # "lights":Lcom/android/server/LightsService;
    .restart local v223    # "vibrator":Lcom/android/server/VibratorService;
    :catch_8c
    move-exception v127

    move-object/from16 v100, v101

    .end local v101    # "containerService":Lcom/sec/knox/container/EnterpriseContainerService;
    .restart local v100    # "containerService":Lcom/sec/knox/container/EnterpriseContainerService;
    goto/16 :goto_74

    .line 538
    .end local v70    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v71    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    :catch_8d
    move-exception v127

    move-object/from16 v70, v71

    .end local v71    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v70    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    goto/16 :goto_73

    .line 463
    .end local v147    # "knoxVerInfo":Landroid/os/Bundle;
    .end local v208    # "timaService":Lcom/android/server/TimaService;
    .end local v222    # "versionInfo":Landroid/os/Bundle;
    .restart local v209    # "timaService":Lcom/android/server/TimaService;
    :catch_8e
    move-exception v127

    move-object/from16 v208, v209

    .end local v209    # "timaService":Lcom/android/server/TimaService;
    .restart local v208    # "timaService":Lcom/android/server/TimaService;
    goto/16 :goto_71

    .line 396
    .end local v11    # "display":Lcom/android/server/display/DisplayManagerService;
    .end local v106    # "cryptState":Ljava/lang/String;
    .end local v112    # "disableBluetooth":Z
    .end local v113    # "disableLocation":Z
    .end local v114    # "disableMedia":Z
    .end local v115    # "disableNetwork":Z
    .end local v116    # "disableNonCoreServices":Z
    .end local v117    # "disableStorage":Z
    .end local v118    # "disableSystemUI":Z
    .end local v119    # "disableTelephony":Z
    .end local v143    # "installer":Lcom/android/server/pm/Installer;
    .end local v205    # "timaEnabled":Z
    .restart local v120    # "display":Lcom/android/server/display/DisplayManagerService;
    .restart local v144    # "installer":Lcom/android/server/pm/Installer;
    :catch_8f
    move-exception v127

    move-object/from16 v143, v144

    .end local v144    # "installer":Lcom/android/server/pm/Installer;
    .restart local v143    # "installer":Lcom/android/server/pm/Installer;
    goto/16 :goto_6

    .end local v4    # "power":Lcom/android/server/power/PowerManagerService;
    .end local v143    # "installer":Lcom/android/server/pm/Installer;
    .restart local v144    # "installer":Lcom/android/server/pm/Installer;
    .restart local v180    # "power":Lcom/android/server/power/PowerManagerService;
    :catch_90
    move-exception v127

    move-object/from16 v4, v180

    .end local v180    # "power":Lcom/android/server/power/PowerManagerService;
    .restart local v4    # "power":Lcom/android/server/power/PowerManagerService;
    move-object/from16 v143, v144

    .end local v144    # "installer":Lcom/android/server/pm/Installer;
    .restart local v143    # "installer":Lcom/android/server/pm/Installer;
    goto/16 :goto_6

    .end local v72    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v81    # "battery":Lcom/android/server/BatteryService;
    .end local v120    # "display":Lcom/android/server/display/DisplayManagerService;
    .end local v142    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v148    # "lights":Lcom/android/server/LightsService;
    .restart local v6    # "lights":Lcom/android/server/LightsService;
    .restart local v8    # "battery":Lcom/android/server/BatteryService;
    .restart local v11    # "display":Lcom/android/server/display/DisplayManagerService;
    .restart local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v74    # "appWidget":Lcom/android/server/AppWidgetService;
    .restart local v77    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v103    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v110    # "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    .restart local v112    # "disableBluetooth":Z
    .restart local v113    # "disableLocation":Z
    .restart local v114    # "disableMedia":Z
    .restart local v115    # "disableNetwork":Z
    .restart local v116    # "disableNonCoreServices":Z
    .restart local v117    # "disableStorage":Z
    .restart local v118    # "disableSystemUI":Z
    .restart local v119    # "disableTelephony":Z
    .restart local v125    # "dreamy":Lcom/android/server/dreams/DreamManagerService;
    .restart local v129    # "enterprisePolicy":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .restart local v140    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v149    # "location":Lcom/android/server/LocationManagerService;
    .restart local v151    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v155    # "mdsEnable":Ljava/lang/String;
    .restart local v156    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v173    # "notification":Lcom/android/server/NotificationManagerService;
    .restart local v182    # "printManager":Lcom/android/server/print/PrintManagerService;
    .restart local v191    # "sLocation":Landroid/os/IBinder;
    .restart local v201    # "statusBar":Lcom/android/server/StatusBarManagerService;
    .restart local v212    # "transcloud":Lcom/android/server/TranscloudMonitorService;
    .restart local v214    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v226    # "wallpaper":Lcom/android/server/WallpaperManagerService;
    :cond_57
    move-object/from16 v25, v169

    .end local v169    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v25    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    goto/16 :goto_34

    .end local v25    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v155    # "mdsEnable":Ljava/lang/String;
    .restart local v169    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    :cond_58
    move-object/from16 v25, v169

    .end local v169    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v25    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    goto/16 :goto_62
.end method

.method reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 219
    const-string v0, "SystemServer"

    const-string v1, "***********************************************"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    const-string v0, "SystemServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BOOT FAILURE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 221
    return-void
.end method
