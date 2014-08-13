.class public Lcom/sec/android/inputmethod/SamsungKeypadUncaughtExceptionHandler;
.super Ljava/lang/Object;
.source "SamsungKeypadUncaughtExceptionHandler.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field static final NOT_SUPPORTED:Ljava/lang/String; = "not supported"

.field static final VO_RESOURCES_FILE_NAME:Ljava/lang/String; = "resources.txt"


# instance fields
.field private mInputManager:Lcom/diotek/ime/framework/common/InputManager;

.field private mUncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method public constructor <init>(Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .locals 1
    .param p1, "uncaughtExceptionHandler"    # Ljava/lang/Thread$UncaughtExceptionHandler;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadUncaughtExceptionHandler;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    .line 26
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadUncaughtExceptionHandler;->mUncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 30
    iput-object p1, p0, Lcom/sec/android/inputmethod/SamsungKeypadUncaughtExceptionHandler;->mUncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 31
    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadUncaughtExceptionHandler;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    .line 32
    return-void
.end method

.method private getExactSwiftkeyVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 69
    const-string v0, "SWIFTKEY"

    const-string v1, "SWIFTKEY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    invoke-static {}, Lcom/touchtype_fluency/SwiftKeySDK;->getVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    .line 72
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "not supported"

    goto :goto_0
.end method

.method private getExactVOVersion()Ljava/lang/String;
    .locals 6

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/sec/android/inputmethod/SamsungKeypadUncaughtExceptionHandler;->isUseVOResourceManager()Z

    move-result v5

    if-nez v5, :cond_0

    .line 77
    const-string v5, "not supported"

    .line 109
    :goto_0
    return-object v5

    .line 79
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/inputmethod/SamsungKeypadUncaughtExceptionHandler;->getVOResourcePath()Ljava/lang/String;

    move-result-object v3

    .line 81
    .local v3, "resourcePath":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 83
    const-string v5, "resources.txt"

    invoke-virtual {v3, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 84
    const/4 v1, 0x0

    .line 86
    .local v1, "fis":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .local v2, "fis":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v4, Ljava/util/Scanner;

    invoke-direct {v4, v2}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 88
    .local v4, "scanner":Ljava/util/Scanner;
    if-eqz v4, :cond_4

    .line 90
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 94
    :goto_1
    :try_start_3
    invoke-virtual {v4}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v5

    .line 100
    if-eqz v2, :cond_3

    .line 101
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 102
    const/4 v1, 0x0

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    goto :goto_0

    .line 91
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    :catch_0
    move-exception v0

    .line 92
    .local v0, "e":Ljava/io/IOException;
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    .line 96
    .end local v0    # "e":Ljava/io/IOException;
    .end local v4    # "scanner":Ljava/util/Scanner;
    :catch_1
    move-exception v0

    move-object v1, v2

    .line 97
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .local v0, "e":Ljava/io/FileNotFoundException;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    :goto_2
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 100
    if-eqz v1, :cond_1

    .line 101
    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 102
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .end local v1    # "fis":Ljava/io/FileInputStream;
    :goto_3
    const/4 v1, 0x0

    .line 109
    :cond_1
    :goto_4
    const-string v5, "not supported"

    goto :goto_0

    .line 99
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    :catchall_0
    move-exception v5

    .line 100
    :goto_5
    if-eqz v1, :cond_2

    .line 101
    :try_start_8
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    .line 102
    const/4 v1, 0x0

    .line 99
    :cond_2
    :goto_6
    throw v5

    .line 104
    :catch_2
    move-exception v0

    .line 105
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_6

    .line 104
    .local v0, "e":Ljava/io/FileNotFoundException;
    :catch_3
    move-exception v0

    .line 105
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4

    .line 104
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "scanner":Ljava/util/Scanner;
    :catch_4
    move-exception v0

    .line 105
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .end local v0    # "e":Ljava/io/IOException;
    :cond_3
    move-object v1, v2

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    goto :goto_0

    .line 100
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    :cond_4
    if-eqz v2, :cond_5

    .line 101
    :try_start_9
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    goto :goto_3

    .line 104
    :catch_5
    move-exception v0

    .line 105
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .end local v0    # "e":Ljava/io/IOException;
    :cond_5
    move-object v1, v2

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    goto :goto_4

    .line 99
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .end local v4    # "scanner":Ljava/util/Scanner;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v5

    move-object v1, v2

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    goto :goto_5

    .line 96
    :catch_6
    move-exception v0

    goto :goto_2
.end method

.method private getExactXt9Version()Ljava/lang/String;
    .locals 10

    .prologue
    .line 46
    const/16 v4, 0x64

    .line 47
    .local v4, "wBufMaxSize":S
    new-array v1, v4, [S

    .line 48
    .local v1, "psCodeVerBuf":[S
    new-array v2, v4, [S

    .line 49
    .local v2, "pwBufSize":[S
    const-string v7, "SWIFTKEY"

    const-string v8, "XT9"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 50
    const-string v6, ""

    .line 51
    .local v6, "xt9Version":Ljava/lang/String;
    invoke-static {v1, v4, v2}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9GetCodeVersion([SS[S)S

    move-result v5

    .line 52
    .local v5, "wStatus":S
    const/16 v3, 0x14

    .line 53
    .local v3, "versionNameMaxSize":I
    if-eqz v5, :cond_1

    .line 54
    const-string v7, "SamsungKeypadUncaughtExceptionHandler"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getExactXt9Version : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    const-string v6, "not supported"

    .line 65
    .end local v3    # "versionNameMaxSize":I
    .end local v5    # "wStatus":S
    .end local v6    # "xt9Version":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v6

    .line 57
    .restart local v3    # "versionNameMaxSize":I
    .restart local v5    # "wStatus":S
    .restart local v6    # "xt9Version":Ljava/lang/String;
    :cond_1
    const-string v7, "XT9"

    const-string v8, "SWIFTKEY"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 58
    const/16 v3, 0xc

    .line 60
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v3, :cond_0

    .line 61
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-short v8, v1, v0

    int-to-char v8, v8

    invoke-static {v8}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 60
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 65
    .end local v0    # "i":I
    .end local v3    # "versionNameMaxSize":I
    .end local v5    # "wStatus":S
    .end local v6    # "xt9Version":Ljava/lang/String;
    :cond_3
    const-string v6, "not supported"

    goto :goto_0
.end method

.method private getVOResourcePath()Ljava/lang/String;
    .locals 5

    .prologue
    .line 113
    const/4 v0, 0x0

    .line 114
    .local v0, "libPath":Ljava/lang/String;
    const/4 v1, 0x0

    .line 115
    .local v1, "resourcePath":Ljava/lang/String;
    iget-object v3, p0, Lcom/sec/android/inputmethod/SamsungKeypadUncaughtExceptionHandler;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    if-eqz v3, :cond_0

    .line 116
    iget-object v3, p0, Lcom/sec/android/inputmethod/SamsungKeypadUncaughtExceptionHandler;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->getLanguagePackManager(Landroid/content/Context;)Lcom/visionobjects/resourcemanager/VOLanguagePackManager;

    move-result-object v2

    .line 117
    .local v2, "volpm":Lcom/visionobjects/resourcemanager/VOLanguagePackManager;
    if-eqz v2, :cond_0

    .line 118
    invoke-virtual {v2}, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->getEnginePath()Ljava/lang/String;

    move-result-object v0

    .line 121
    .end local v2    # "volpm":Lcom/visionobjects/resourcemanager/VOLanguagePackManager;
    :cond_0
    if-eqz v0, :cond_1

    .line 122
    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x3

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 124
    :cond_1
    if-eqz v1, :cond_2

    .line 127
    .end local v1    # "resourcePath":Ljava/lang/String;
    :goto_0
    return-object v1

    .restart local v1    # "resourcePath":Ljava/lang/String;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isUseVOResourceManager()Z
    .locals 2

    .prologue
    .line 131
    const-string v0, "VOHWRPANEL"

    const-string v1, "VOHWRPANEL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "VOHWRPANEL"

    const-string v1, "VO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "thread"    # Ljava/lang/Thread;
    .param p2, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/sec/android/inputmethod/SamsungKeypadUncaughtExceptionHandler;->getExactSwiftkeyVersion()Ljava/lang/String;

    move-result-object v0

    .line 37
    .local v0, "swiftkeyVersion":Ljava/lang/String;
    invoke-direct {p0}, Lcom/sec/android/inputmethod/SamsungKeypadUncaughtExceptionHandler;->getExactXt9Version()Ljava/lang/String;

    move-result-object v2

    .line 38
    .local v2, "xt9Version":Ljava/lang/String;
    invoke-direct {p0}, Lcom/sec/android/inputmethod/SamsungKeypadUncaughtExceptionHandler;->getExactVOVersion()Ljava/lang/String;

    move-result-object v1

    .line 39
    .local v1, "voVersion":Ljava/lang/String;
    const-string v3, "SamsungKeypadUncaughtExceptionHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Swiftkey version = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    const-string v3, "SamsungKeypadUncaughtExceptionHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "XT9 version = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    const-string v3, "SamsungKeypadUncaughtExceptionHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "VO lib version = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    iget-object v3, p0, Lcom/sec/android/inputmethod/SamsungKeypadUncaughtExceptionHandler;->mUncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v3, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 43
    return-void
.end method
