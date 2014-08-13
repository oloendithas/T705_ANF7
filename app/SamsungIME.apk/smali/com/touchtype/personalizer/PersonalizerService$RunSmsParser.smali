.class Lcom/touchtype/personalizer/PersonalizerService$RunSmsParser;
.super Ljava/lang/Object;
.source "PersonalizerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/touchtype/personalizer/PersonalizerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RunSmsParser"
.end annotation


# instance fields
.field private mServiceId:I

.field private mServiceName:Ljava/lang/String;

.field private mTotal:I

.field final synthetic this$0:Lcom/touchtype/personalizer/PersonalizerService;


# direct methods
.method constructor <init>(Lcom/touchtype/personalizer/PersonalizerService;ZLjava/lang/String;I)V
    .locals 0
    .param p2, "fromInstaller"    # Z
    .param p3, "serviceName"    # Ljava/lang/String;
    .param p4, "serviceId"    # I

    .prologue
    .line 402
    iput-object p1, p0, Lcom/touchtype/personalizer/PersonalizerService$RunSmsParser;->this$0:Lcom/touchtype/personalizer/PersonalizerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 404
    iput-object p3, p0, Lcom/touchtype/personalizer/PersonalizerService$RunSmsParser;->mServiceName:Ljava/lang/String;

    .line 405
    iput p4, p0, Lcom/touchtype/personalizer/PersonalizerService$RunSmsParser;->mServiceId:I

    .line 406
    return-void
.end method

.method static synthetic access$1700(Lcom/touchtype/personalizer/PersonalizerService$RunSmsParser;)I
    .locals 1
    .param p0, "x0"    # Lcom/touchtype/personalizer/PersonalizerService$RunSmsParser;

    .prologue
    .line 396
    iget v0, p0, Lcom/touchtype/personalizer/PersonalizerService$RunSmsParser;->mTotal:I

    return v0
.end method

.method static synthetic access$1702(Lcom/touchtype/personalizer/PersonalizerService$RunSmsParser;I)I
    .locals 0
    .param p0, "x0"    # Lcom/touchtype/personalizer/PersonalizerService$RunSmsParser;
    .param p1, "x1"    # I

    .prologue
    .line 396
    iput p1, p0, Lcom/touchtype/personalizer/PersonalizerService$RunSmsParser;->mTotal:I

    return p1
.end method

.method static synthetic access$1900(Lcom/touchtype/personalizer/PersonalizerService$RunSmsParser;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/touchtype/personalizer/PersonalizerService$RunSmsParser;

    .prologue
    .line 396
    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerService$RunSmsParser;->mServiceName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/touchtype/personalizer/PersonalizerService$RunSmsParser;)I
    .locals 1
    .param p0, "x0"    # Lcom/touchtype/personalizer/PersonalizerService$RunSmsParser;

    .prologue
    .line 396
    iget v0, p0, Lcom/touchtype/personalizer/PersonalizerService$RunSmsParser;->mServiceId:I

    return v0
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 410
    # getter for: Lcom/touchtype/personalizer/PersonalizerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/touchtype/personalizer/PersonalizerService;->access$1300()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Attempting to build an SMSParser object..."

    invoke-static {v2, v3}, Lcom/touchtype_fluency/service/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    invoke-static {}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->getSwiftKeySession()Lcom/touchtype_fluency/util/SwiftKeySession;

    move-result-object v1

    .line 414
    .local v1, "mSwiftKeySession":Lcom/touchtype_fluency/util/SwiftKeySession;
    invoke-static {}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->getLanguagePackManager()Lcom/touchtype_fluency/util/LanguagePackManager;

    move-result-object v0

    .line 418
    .local v0, "lpm":Lcom/touchtype_fluency/util/LanguagePackManager;
    :try_start_0
    invoke-virtual {v1, v0}, Lcom/touchtype_fluency/util/SwiftKeySession;->createOrLoadDynamicUserModel(Lcom/touchtype_fluency/util/LanguagePackManager;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 427
    :goto_0
    new-instance v2, Lcom/touchtype/personalizer/PersonalizerService$RunSmsParser$1;

    iget-object v3, p0, Lcom/touchtype/personalizer/PersonalizerService$RunSmsParser;->this$0:Lcom/touchtype/personalizer/PersonalizerService;

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, p0, v3, v1}, Lcom/touchtype/personalizer/PersonalizerService$RunSmsParser$1;-><init>(Lcom/touchtype/personalizer/PersonalizerService$RunSmsParser;Landroid/content/Context;Lcom/touchtype_fluency/util/SwiftKeySession;)V

    .line 476
    return-void

    .line 419
    :catch_0
    move-exception v2

    goto :goto_0
.end method
