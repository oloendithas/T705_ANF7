.class public Lcom/sec/android/app/camera/PlugInShootingModesLoader;
.super Landroid/os/AsyncTask;
.source "PlugInShootingModesLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final ACTION_SHOOTING_MODES_INSTALL:Ljava/lang/String; = "com.sec.android.shootingmode.action.INSTALL_SHOOTING_MODES"

.field private static final AUTHORITY:Ljava/lang/String; = "com.samsung.android.provider.shootingmodeprovider"

.field private static final INDEX_SM_ACTIVITY_NAME:I = 0x4

.field private static final INDEX_SM_CAMERA_TYPE:I = 0x8

.field private static final INDEX_SM_DESCRIPTION:I = 0x2

.field private static final INDEX_SM_ICON_RES_ID:I = 0x1

.field private static final INDEX_SM_LIBRARY_PATH:I = 0x7

.field private static final INDEX_SM_MAJOR_VERSION:I = 0x5

.field private static final INDEX_SM_MINOR_VERSION:I = 0x6

.field private static final INDEX_SM_ORDER:I = 0x9

.field private static final INDEX_SM_PACKAGE_NAME:I = 0x3

.field private static final INDEX_SM_TITLE:I = 0x0

.field private static final SHOOTING_MODES_URI:Landroid/net/Uri;

.field private static final SHOOTING_MODE_PROJECTION:[Ljava/lang/String;

.field private static final SHOOTING_MODE_SORT_ORDER:Ljava/lang/String; = "sm_order ASC"

.field private static final SM_ACTIVITY_NAME:Ljava/lang/String; = "activity_name"

.field private static final SM_CAMERA_TYPE:Ljava/lang/String; = "camera_type"

.field private static final SM_DESCRIPTION:Ljava/lang/String; = "description"

.field private static final SM_ICON_RES_ID:Ljava/lang/String; = "icon_res_id"

.field private static final SM_LIBRARY_PATH:Ljava/lang/String; = "library_path"

.field private static final SM_MAJOR_VERSION:Ljava/lang/String; = "major_version"

.field private static final SM_MINOR_VERSION:Ljava/lang/String; = "minor_version"

.field private static final SM_ORDER:Ljava/lang/String; = "sm_order"

.field private static final SM_PACKAGE_NAME:Ljava/lang/String; = "name"

.field private static final SM_TITLE:Ljava/lang/String; = "title"

.field private static final TAG:Ljava/lang/String;

.field private static final mExternalShootingModesMapping:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final mPreloadedShootingModesMapping:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mActivityContext:Lcom/sec/android/app/camera/Camera;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 18
    const-class v0, Lcom/sec/android/app/camera/PlugInShootingModesLoader;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/camera/PlugInShootingModesLoader;->TAG:Ljava/lang/String;

    .line 21
    const-string v0, "content://com.samsung.android.provider.shootingmodeprovider/shooting_modes"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/camera/PlugInShootingModesLoader;->SHOOTING_MODES_URI:Landroid/net/Uri;

    .line 49
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "icon_res_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "description"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "activity_name"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "major_version"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "minor_version"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "library_path"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "camera_type"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "sm_order"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/camera/PlugInShootingModesLoader;->SHOOTING_MODE_PROJECTION:[Ljava/lang/String;

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/android/app/camera/PlugInShootingModesLoader;->mPreloadedShootingModesMapping:Ljava/util/HashMap;

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/android/app/camera/PlugInShootingModesLoader;->mExternalShootingModesMapping:Ljava/util/HashMap;

    .line 71
    sget-object v0, Lcom/sec/android/app/camera/PlugInShootingModesLoader;->mPreloadedShootingModesMapping:Ljava/util/HashMap;

    const-string v1, "com.sec.android.app.camera.Auto"

    const/16 v2, 0x12c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Lcom/sec/android/app/camera/PlugInShootingModesLoader;->mPreloadedShootingModesMapping:Ljava/util/HashMap;

    const-string v1, "com.sec.android.app.camera.Beauty Face"

    const/16 v2, 0x133

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v0, Lcom/sec/android/app/camera/PlugInShootingModesLoader;->mPreloadedShootingModesMapping:Ljava/util/HashMap;

    const-string v1, "com.sec.android.app.camera.Panorama"

    const/16 v2, 0x12e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Lcom/sec/android/app/camera/PlugInShootingModesLoader;->mPreloadedShootingModesMapping:Ljava/util/HashMap;

    const-string v1, "com.sec.android.app.camera.3D tour shot"

    const/16 v2, 0x153

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Lcom/sec/android/app/camera/PlugInShootingModesLoader;->mPreloadedShootingModesMapping:Ljava/util/HashMap;

    const-string v1, "com.sec.android.app.camera.Dual Camera"

    const/16 v2, 0x150

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Lcom/sec/android/app/camera/PlugInShootingModesLoader;->mPreloadedShootingModesMapping:Ljava/util/HashMap;

    const-string v1, "com.sec.android.app.camera.Shot and more"

    const/16 v2, 0x152

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Lcom/sec/android/app/camera/PlugInShootingModesLoader;->mPreloadedShootingModesMapping:Ljava/util/HashMap;

    const-string v1, "com.sec.android.app.camera.Continuous shot"

    const/16 v2, 0x13c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v0, Lcom/sec/android/app/camera/PlugInShootingModesLoader;->mPreloadedShootingModesMapping:Ljava/util/HashMap;

    const-string v1, "com.sec.android.app.camera.Rich tone"

    const/16 v2, 0x13a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v0, Lcom/sec/android/app/camera/PlugInShootingModesLoader;->mExternalShootingModesMapping:Ljava/util/HashMap;

    const-string v1, "com.sec.android.app.camera.shootingmode.animatedphoto"

    const/16 v2, 0x14c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v0, Lcom/sec/android/app/camera/PlugInShootingModesLoader;->mExternalShootingModesMapping:Ljava/util/HashMap;

    const-string v1, "com.arcsoft.picaction.app"

    const/16 v2, 0x148

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v0, Lcom/sec/android/app/camera/PlugInShootingModesLoader;->mExternalShootingModesMapping:Ljava/util/HashMap;

    const-string v1, "com.arcsoft.picturesbest.app"

    const/16 v2, 0x141

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v0, Lcom/sec/android/app/camera/PlugInShootingModesLoader;->mExternalShootingModesMapping:Ljava/util/HashMap;

    const-string v1, "com.arcsoft.demo.piclear"

    const/16 v2, 0x143

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v0, Lcom/sec/android/app/camera/PlugInShootingModesLoader;->mExternalShootingModesMapping:Ljava/util/HashMap;

    const-string v1, "com.sec.android.app.camera.shootingmode.night"

    const/16 v2, 0x13f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v0, Lcom/sec/android/app/camera/PlugInShootingModesLoader;->mExternalShootingModesMapping:Ljava/util/HashMap;

    const-string v1, "com.sec.android.app.camera.shootingmode.night_scene"

    const/16 v2, 0x14d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v0, Lcom/sec/android/app/camera/PlugInShootingModesLoader;->mExternalShootingModesMapping:Ljava/util/HashMap;

    const-string v1, "com.sec.android.app.camera.shootingmode.golf"

    const/16 v2, 0x147

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v0, Lcom/sec/android/app/camera/PlugInShootingModesLoader;->mExternalShootingModesMapping:Ljava/util/HashMap;

    const-string v1, "com.sec.android.app.camera.shootingmode.panorama3d"

    const/16 v2, 0x14b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v0, Lcom/sec/android/app/camera/PlugInShootingModesLoader;->mExternalShootingModesMapping:Ljava/util/HashMap;

    const-string v1, "com.sec.android.app.camera.shootingmode.bestphoto"

    const/16 v2, 0x140

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v0, Lcom/sec/android/app/camera/PlugInShootingModesLoader;->mExternalShootingModesMapping:Ljava/util/HashMap;

    const-string v1, "com.sec.android.app.camera.shootingmode.sports"

    const/16 v2, 0x14e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v0, Lcom/sec/android/app/camera/PlugInShootingModesLoader;->mExternalShootingModesMapping:Ljava/util/HashMap;

    const-string v1, "com.sec.android.app.camera.shootingmode.soundshot"

    const/16 v2, 0x149

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v0, Lcom/sec/android/app/camera/PlugInShootingModesLoader;->mExternalShootingModesMapping:Ljava/util/HashMap;

    const-string v1, "com.sec.android.app.camera.shootingmode.aqua"

    const/16 v2, 0x14f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/Camera;)V
    .locals 0
    .param p1, "activityContext"    # Lcom/sec/android/app/camera/Camera;

    .prologue
    .line 118
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 119
    iput-object p1, p0, Lcom/sec/android/app/camera/PlugInShootingModesLoader;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    .line 120
    return-void
.end method

.method public static isShootingModeExternal(I)Z
    .locals 2
    .param p0, "shootingModeCommand"    # I

    .prologue
    .line 103
    const/16 v0, 0x155

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/sec/android/app/camera/PlugInShootingModesLoader;->mExternalShootingModesMapping:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isShootingModePreloaded(I)Z
    .locals 2
    .param p0, "shootingModeCommand"    # I

    .prologue
    .line 115
    sget-object v0, Lcom/sec/android/app/camera/PlugInShootingModesLoader;->mPreloadedShootingModesMapping:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 16
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/PlugInShootingModesLoader;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1
    .param p1, "arg0"    # [Ljava/lang/Void;

    .prologue
    .line 204
    invoke-virtual {p0}, Lcom/sec/android/app/camera/PlugInShootingModesLoader;->loadExternalShootingModes()Z

    .line 205
    const/4 v0, 0x0

    return-object v0
.end method

.method public declared-synchronized loadExternalShootingModes()Z
    .locals 22

    .prologue
    .line 123
    monitor-enter p0

    :try_start_0
    new-instance v18, Landroid/util/SparseArray;

    invoke-direct/range {v18 .. v18}, Landroid/util/SparseArray;-><init>()V

    .line 124
    .local v18, "modes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/HashMap<Ljava/lang/String;Lcom/sec/android/app/camera/PlugInShootingModesStorage$PlugInShootingMode;>;>;"
    const/4 v14, 0x0

    .line 125
    .local v14, "cursor":Landroid/database/Cursor;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/PlugInShootingModesLoader;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v19

    .line 128
    .local v19, "packageManager":Landroid/content/pm/PackageManager;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/PlugInShootingModesLoader;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/camera/PlugInShootingModesLoader;->SHOOTING_MODES_URI:Landroid/net/Uri;

    sget-object v4, Lcom/sec/android/app/camera/PlugInShootingModesLoader;->SHOOTING_MODE_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "sm_order ASC"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v14

    .line 130
    if-nez v14, :cond_1

    .line 131
    const/4 v2, 0x0

    .line 192
    if-eqz v14, :cond_0

    .line 193
    :try_start_2
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 196
    :cond_0
    invoke-static {}, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->getInstance()Lcom/sec/android/app/camera/PlugInShootingModesStorage;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/PlugInShootingModesLoader;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v6, v0, v1}, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->setExternalModes(Landroid/content/Context;Landroid/util/SparseArray;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 199
    :goto_0
    monitor-exit p0

    return v2

    .line 134
    :cond_1
    :try_start_3
    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_5

    .line 136
    new-instance v20, Landroid/content/Intent;

    invoke-direct/range {v20 .. v20}, Landroid/content/Intent;-><init>()V

    .line 138
    .local v20, "serviceIntent":Landroid/content/Intent;
    const-string v2, "com.sec.android.shootingmode.action.INSTALL_SHOOTING_MODES"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 139
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/PlugInShootingModesLoader;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/content/ContextWrapper;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 192
    .end local v20    # "serviceIntent":Landroid/content/Intent;
    :cond_2
    if-eqz v14, :cond_3

    .line 193
    :try_start_4
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 196
    :cond_3
    invoke-static {}, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->getInstance()Lcom/sec/android/app/camera/PlugInShootingModesStorage;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/PlugInShootingModesLoader;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v6}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    move-object/from16 v0, v18

    invoke-virtual {v2, v6, v0}, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->setExternalModes(Landroid/content/Context;Landroid/util/SparseArray;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 199
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .local v3, "packageName":Ljava/lang/String;
    .local v4, "activityName":Ljava/lang/String;
    .local v5, "title":Ljava/lang/String;
    .local v7, "iconResId":I
    .local v8, "majorVersion":I
    .local v9, "minorVersion":I
    .local v10, "libPath":Ljava/lang/String;
    .local v11, "cameraType":Ljava/lang/String;
    .local v12, "order":I
    .local v13, "commandId":I
    .local v15, "description":Ljava/lang/String;
    .local v17, "itemsList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/sec/android/app/camera/PlugInShootingModesStorage$PlugInShootingMode;>;"
    :cond_4
    move-object v6, v15

    .line 173
    :goto_2
    :try_start_5
    invoke-direct/range {v2 .. v12}, Lcom/sec/android/app/camera/PlugInShootingModesStorage$PlugInShootingMode;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "activityName":Ljava/lang/String;
    .end local v5    # "title":Ljava/lang/String;
    .end local v7    # "iconResId":I
    .end local v8    # "majorVersion":I
    .end local v9    # "minorVersion":I
    .end local v10    # "libPath":Ljava/lang/String;
    .end local v11    # "cameraType":Ljava/lang/String;
    .end local v12    # "order":I
    .end local v13    # "commandId":I
    .end local v15    # "description":Ljava/lang/String;
    .end local v17    # "itemsList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/sec/android/app/camera/PlugInShootingModesStorage$PlugInShootingMode;>;"
    :cond_5
    :goto_3
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 142
    const/4 v2, 0x0

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 143
    .restart local v5    # "title":Ljava/lang/String;
    const/4 v2, 0x1

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 144
    .restart local v7    # "iconResId":I
    const/4 v2, 0x2

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 145
    .restart local v15    # "description":Ljava/lang/String;
    const/4 v2, 0x3

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 146
    .restart local v3    # "packageName":Ljava/lang/String;
    const/4 v2, 0x4

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 147
    .restart local v4    # "activityName":Ljava/lang/String;
    const/4 v2, 0x5

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 148
    .restart local v8    # "majorVersion":I
    const/4 v2, 0x6

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 149
    .restart local v9    # "minorVersion":I
    const/4 v2, 0x7

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 150
    .restart local v10    # "libPath":Ljava/lang/String;
    const/16 v2, 0x8

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 151
    .restart local v11    # "cameraType":Ljava/lang/String;
    const/16 v2, 0x9

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 156
    .restart local v12    # "order":I
    sget-object v2, Lcom/sec/android/app/camera/PlugInShootingModesLoader;->mPreloadedShootingModesMapping:Ljava/util/HashMap;

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 157
    sget-object v2, Lcom/sec/android/app/camera/PlugInShootingModesLoader;->mPreloadedShootingModesMapping:Ljava/util/HashMap;

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 164
    .restart local v13    # "commandId":I
    :goto_4
    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/HashMap;

    .line 166
    .restart local v17    # "itemsList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/sec/android/app/camera/PlugInShootingModesStorage$PlugInShootingMode;>;"
    if-nez v17, :cond_6

    .line 167
    new-instance v17, Ljava/util/HashMap;

    .end local v17    # "itemsList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/sec/android/app/camera/PlugInShootingModesStorage$PlugInShootingMode;>;"
    invoke-direct/range {v17 .. v17}, Ljava/util/HashMap;-><init>()V

    .line 168
    .restart local v17    # "itemsList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/sec/android/app/camera/PlugInShootingModesStorage$PlugInShootingMode;>;"
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v13, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 172
    :cond_6
    const/4 v2, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 173
    new-instance v2, Lcom/sec/android/app/camera/PlugInShootingModesStorage$PlugInShootingMode;

    if-nez v15, :cond_4

    const-string v6, ""

    goto :goto_2

    .line 158
    .end local v13    # "commandId":I
    .end local v17    # "itemsList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/sec/android/app/camera/PlugInShootingModesStorage$PlugInShootingMode;>;"
    :cond_7
    sget-object v2, Lcom/sec/android/app/camera/PlugInShootingModesLoader;->mExternalShootingModesMapping:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 159
    sget-object v2, Lcom/sec/android/app/camera/PlugInShootingModesLoader;->mExternalShootingModesMapping:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .restart local v13    # "commandId":I
    goto :goto_4

    .line 161
    .end local v13    # "commandId":I
    :cond_8
    const/16 v13, 0x155

    .restart local v13    # "commandId":I
    goto :goto_4

    .line 185
    .restart local v17    # "itemsList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/sec/android/app/camera/PlugInShootingModesStorage$PlugInShootingMode;>;"
    :cond_9
    sget-object v2, Lcom/sec/android/app/camera/PlugInShootingModesLoader;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Missed package "

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto/16 :goto_3

    .line 189
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "activityName":Ljava/lang/String;
    .end local v5    # "title":Ljava/lang/String;
    .end local v7    # "iconResId":I
    .end local v8    # "majorVersion":I
    .end local v9    # "minorVersion":I
    .end local v10    # "libPath":Ljava/lang/String;
    .end local v11    # "cameraType":Ljava/lang/String;
    .end local v12    # "order":I
    .end local v13    # "commandId":I
    .end local v15    # "description":Ljava/lang/String;
    .end local v17    # "itemsList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/sec/android/app/camera/PlugInShootingModesStorage$PlugInShootingMode;>;"
    :catch_0
    move-exception v16

    .line 190
    .local v16, "e":Ljava/lang/Exception;
    :try_start_6
    sget-object v2, Lcom/sec/android/app/camera/PlugInShootingModesLoader;->TAG:Ljava/lang/String;

    const-string v6, "Failed to query shooting modes"

    invoke-static {v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 192
    if-eqz v14, :cond_a

    .line 193
    :try_start_7
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 196
    :cond_a
    invoke-static {}, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->getInstance()Lcom/sec/android/app/camera/PlugInShootingModesStorage;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/PlugInShootingModesLoader;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v6}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    move-object/from16 v0, v18

    invoke-virtual {v2, v6, v0}, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->setExternalModes(Landroid/content/Context;Landroid/util/SparseArray;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_1

    .line 123
    .end local v14    # "cursor":Landroid/database/Cursor;
    .end local v16    # "e":Ljava/lang/Exception;
    .end local v18    # "modes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/HashMap<Ljava/lang/String;Lcom/sec/android/app/camera/PlugInShootingModesStorage$PlugInShootingMode;>;>;"
    .end local v19    # "packageManager":Landroid/content/pm/PackageManager;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 192
    .restart local v14    # "cursor":Landroid/database/Cursor;
    .restart local v18    # "modes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/HashMap<Ljava/lang/String;Lcom/sec/android/app/camera/PlugInShootingModesStorage$PlugInShootingMode;>;>;"
    .restart local v19    # "packageManager":Landroid/content/pm/PackageManager;
    :catchall_1
    move-exception v2

    if-eqz v14, :cond_b

    .line 193
    :try_start_8
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 196
    :cond_b
    invoke-static {}, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->getInstance()Lcom/sec/android/app/camera/PlugInShootingModesStorage;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/PlugInShootingModesLoader;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v6, v0, v1}, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->setExternalModes(Landroid/content/Context;Landroid/util/SparseArray;)V

    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 16
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/PlugInShootingModesLoader;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2
    .param p1, "aVoid"    # Ljava/lang/Void;

    .prologue
    .line 215
    iget-object v1, p0, Lcom/sec/android/app/camera/PlugInShootingModesLoader;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    .line 217
    .local v0, "mHandler":Landroid/os/Handler;
    if-eqz v0, :cond_0

    .line 218
    const/16 v1, 0x1f

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 220
    :cond_0
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 16
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/PlugInShootingModesLoader;->onProgressUpdate([Ljava/lang/Void;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Void;)V
    .locals 0
    .param p1, "values"    # [Ljava/lang/Void;

    .prologue
    .line 211
    return-void
.end method
