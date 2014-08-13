.class public Lcom/nuance/connect/util/Logger;
.super Ljava/lang/Object;
.source "Logger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/connect/util/Logger$1;,
        Lcom/nuance/connect/util/Logger$DeveloperLog;,
        Lcom/nuance/connect/util/Logger$Log;,
        Lcom/nuance/connect/util/Logger$OutputMode;,
        Lcom/nuance/connect/util/Logger$LoggerType;
    }
.end annotation


# static fields
.field public static final ALL:I = 0x1

.field public static final ASSERT:I = 0x7

.field public static final DEBUG:I = 0x3

.field public static final ERROR:I = 0x6

.field public static final INFO:I = 0x4

.field protected static final TAG:Ljava/lang/String; = "ConnectSDK"

.field public static final VERBOSE:I = 0x2

.field public static final WARN:I = 0x5

.field private static final developerLog:Lcom/nuance/connect/util/Logger$Log;

.field private static developerLogEnabled:Z

.field protected static volatile logLevel:I

.field private static final oemLog:Lcom/nuance/connect/util/Logger$Log;

.field private static outputFile:Ljava/io/File;

.field private static outputMode:Lcom/nuance/connect/util/Logger$OutputMode;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 58
    const/4 v0, 0x6

    sput v0, Lcom/nuance/connect/util/Logger;->logLevel:I

    .line 60
    const/4 v0, 0x0

    sput-boolean v0, Lcom/nuance/connect/util/Logger;->developerLogEnabled:Z

    .line 62
    sget-object v0, Lcom/nuance/connect/util/Logger$OutputMode;->ANDROID_LOG:Lcom/nuance/connect/util/Logger$OutputMode;

    sput-object v0, Lcom/nuance/connect/util/Logger;->outputMode:Lcom/nuance/connect/util/Logger$OutputMode;

    .line 66
    new-instance v0, Lcom/nuance/connect/util/Logger$DeveloperLog;

    sget-object v1, Lcom/nuance/connect/util/Logger$LoggerType;->DEVELOPER:Lcom/nuance/connect/util/Logger$LoggerType;

    invoke-direct {v0, v1}, Lcom/nuance/connect/util/Logger$DeveloperLog;-><init>(Lcom/nuance/connect/util/Logger$LoggerType;)V

    sput-object v0, Lcom/nuance/connect/util/Logger;->developerLog:Lcom/nuance/connect/util/Logger$Log;

    .line 68
    new-instance v0, Lcom/nuance/connect/util/Logger$DeveloperLog;

    sget-object v1, Lcom/nuance/connect/util/Logger$LoggerType;->OEM:Lcom/nuance/connect/util/Logger$LoggerType;

    invoke-direct {v0, v1}, Lcom/nuance/connect/util/Logger$DeveloperLog;-><init>(Lcom/nuance/connect/util/Logger$LoggerType;)V

    sput-object v0, Lcom/nuance/connect/util/Logger;->oemLog:Lcom/nuance/connect/util/Logger$Log;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 6
    sget-boolean v0, Lcom/nuance/connect/util/Logger;->developerLogEnabled:Z

    return v0
.end method

.method static synthetic access$100()Lcom/nuance/connect/util/Logger$OutputMode;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/nuance/connect/util/Logger;->outputMode:Lcom/nuance/connect/util/Logger$OutputMode;

    return-object v0
.end method

.method static synthetic access$200()Ljava/io/File;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/nuance/connect/util/Logger;->outputFile:Ljava/io/File;

    return-object v0
.end method

.method public static configure(ZILcom/nuance/connect/util/Logger$OutputMode;Ljava/io/File;)V
    .locals 3
    .param p0, "developerLogEnabled"    # Z
    .param p1, "level"    # I
    .param p2, "mode"    # Lcom/nuance/connect/util/Logger$OutputMode;
    .param p3, "file"    # Ljava/io/File;

    .prologue
    .line 139
    sput-boolean p0, Lcom/nuance/connect/util/Logger;->developerLogEnabled:Z

    .line 140
    sput-object p2, Lcom/nuance/connect/util/Logger;->outputMode:Lcom/nuance/connect/util/Logger$OutputMode;

    .line 141
    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    const/4 v0, 0x7

    if-le p1, v0, :cond_1

    .line 142
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown log level "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 144
    :cond_1
    sput p1, Lcom/nuance/connect/util/Logger;->logLevel:I

    .line 145
    sget-object v0, Lcom/nuance/connect/util/Logger;->outputMode:Lcom/nuance/connect/util/Logger$OutputMode;

    sget-object v1, Lcom/nuance/connect/util/Logger$OutputMode;->ANDROID_LOG:Lcom/nuance/connect/util/Logger$OutputMode;

    if-eq v0, v1, :cond_2

    if-nez p3, :cond_2

    .line 146
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Log file required for selected output"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 148
    :cond_2
    sput-object p3, Lcom/nuance/connect/util/Logger;->outputFile:Ljava/io/File;

    .line 151
    const-string v0, "ConnectSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Changing log level to : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    sget-object v0, Lcom/nuance/connect/util/Logger$LoggerType;->DEVELOPER:Lcom/nuance/connect/util/Logger$LoggerType;

    invoke-static {v0}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Developer log enabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    .line 153
    return-void
.end method

.method public static getLog(Lcom/nuance/connect/util/Logger$LoggerType;)Lcom/nuance/connect/util/Logger$Log;
    .locals 2
    .param p0, "type"    # Lcom/nuance/connect/util/Logger$LoggerType;

    .prologue
    .line 159
    sget-object v0, Lcom/nuance/connect/util/Logger$1;->$SwitchMap$com$nuance$connect$util$Logger$LoggerType:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 164
    sget-object v0, Lcom/nuance/connect/util/Logger;->developerLog:Lcom/nuance/connect/util/Logger$Log;

    :goto_0
    return-object v0

    .line 161
    :pswitch_0
    sget-object v0, Lcom/nuance/connect/util/Logger;->oemLog:Lcom/nuance/connect/util/Logger$Log;

    goto :goto_0

    .line 159
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static getLog(Lcom/nuance/connect/util/Logger$LoggerType;Ljava/lang/String;)Lcom/nuance/connect/util/Logger$Log;
    .locals 3
    .param p0, "type"    # Lcom/nuance/connect/util/Logger$LoggerType;
    .param p1, "where"    # Ljava/lang/String;

    .prologue
    .line 174
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 175
    :cond_0
    invoke-static {p0}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    .line 177
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/nuance/connect/util/Logger$DeveloperLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/nuance/connect/util/Logger$DeveloperLog;-><init>(Lcom/nuance/connect/util/Logger$LoggerType;Ljava/lang/String;)V

    goto :goto_0
.end method
