.class Lcom/touchtype/personalizer/PersonalizerService$RunPersonalizer;
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
    name = "RunPersonalizer"
.end annotation


# instance fields
.field private mId:Ljava/lang/String;

.field private mModelname:Ljava/lang/String;

.field private mParams:Ljava/lang/String;

.field private mPersonalizationListener:Lcom/touchtype/personalizer/PersonalizationListener;

.field private mService:Ljava/lang/String;

.field private mServiceId:I

.field private mServiceName:Ljava/lang/String;

.field final synthetic this$0:Lcom/touchtype/personalizer/PersonalizerService;

.field private thisParent:Lcom/touchtype/personalizer/PersonalizerService$RunPersonalizer;


# direct methods
.method constructor <init>(Lcom/touchtype/personalizer/PersonalizerService;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p2, "fromInstaller"    # Z
    .param p3, "serviceName"    # Ljava/lang/String;
    .param p4, "id"    # Ljava/lang/String;
    .param p5, "service"    # Ljava/lang/String;
    .param p6, "params"    # Ljava/lang/String;
    .param p7, "modelname"    # Ljava/lang/String;
    .param p8, "serviceId"    # I

    .prologue
    .line 239
    iput-object p1, p0, Lcom/touchtype/personalizer/PersonalizerService$RunPersonalizer;->this$0:Lcom/touchtype/personalizer/PersonalizerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 240
    iput-object p3, p0, Lcom/touchtype/personalizer/PersonalizerService$RunPersonalizer;->mServiceName:Ljava/lang/String;

    .line 241
    iput-object p4, p0, Lcom/touchtype/personalizer/PersonalizerService$RunPersonalizer;->mId:Ljava/lang/String;

    .line 242
    iput-object p5, p0, Lcom/touchtype/personalizer/PersonalizerService$RunPersonalizer;->mService:Ljava/lang/String;

    .line 243
    iput-object p6, p0, Lcom/touchtype/personalizer/PersonalizerService$RunPersonalizer;->mParams:Ljava/lang/String;

    .line 244
    iput-object p7, p0, Lcom/touchtype/personalizer/PersonalizerService$RunPersonalizer;->mModelname:Ljava/lang/String;

    .line 245
    iput p8, p0, Lcom/touchtype/personalizer/PersonalizerService$RunPersonalizer;->mServiceId:I

    .line 246
    iput-object p0, p0, Lcom/touchtype/personalizer/PersonalizerService$RunPersonalizer;->thisParent:Lcom/touchtype/personalizer/PersonalizerService$RunPersonalizer;

    .line 248
    new-instance v0, Lcom/touchtype/personalizer/PersonalizerService$RunPersonalizer$1;

    invoke-direct {v0, p0, p1}, Lcom/touchtype/personalizer/PersonalizerService$RunPersonalizer$1;-><init>(Lcom/touchtype/personalizer/PersonalizerService$RunPersonalizer;Lcom/touchtype/personalizer/PersonalizerService;)V

    iput-object v0, p0, Lcom/touchtype/personalizer/PersonalizerService$RunPersonalizer;->mPersonalizationListener:Lcom/touchtype/personalizer/PersonalizationListener;

    .line 296
    return-void
.end method

.method static synthetic access$000(Lcom/touchtype/personalizer/PersonalizerService$RunPersonalizer;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/touchtype/personalizer/PersonalizerService$RunPersonalizer;

    .prologue
    .line 220
    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerService$RunPersonalizer;->mServiceName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/touchtype/personalizer/PersonalizerService$RunPersonalizer;)I
    .locals 1
    .param p0, "x0"    # Lcom/touchtype/personalizer/PersonalizerService$RunPersonalizer;

    .prologue
    .line 220
    iget v0, p0, Lcom/touchtype/personalizer/PersonalizerService$RunPersonalizer;->mServiceId:I

    return v0
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 300
    invoke-static {}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->getLanguagePackManager()Lcom/touchtype_fluency/util/LanguagePackManager;

    move-result-object v7

    .line 301
    .local v7, "lpm":Lcom/touchtype_fluency/util/LanguagePackManager;
    if-nez v7, :cond_0

    .line 302
    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerService$RunPersonalizer;->this$0:Lcom/touchtype/personalizer/PersonalizerService;

    # getter for: Lcom/touchtype/personalizer/PersonalizerService;->mPersonalizerHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/touchtype/personalizer/PersonalizerService;->access$800(Lcom/touchtype/personalizer/PersonalizerService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/touchtype/personalizer/PersonalizerService$RunPersonalizer;->thisParent:Lcom/touchtype/personalizer/PersonalizerService$RunPersonalizer;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 309
    :goto_0
    return-void

    .line 304
    :cond_0
    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerService$RunPersonalizer;->this$0:Lcom/touchtype/personalizer/PersonalizerService;

    iget v1, p0, Lcom/touchtype/personalizer/PersonalizerService$RunPersonalizer;->mServiceId:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    # invokes: Lcom/touchtype/personalizer/PersonalizerService;->setPersonalizerState(IIZ)V
    invoke-static {v0, v1, v2, v3}, Lcom/touchtype/personalizer/PersonalizerService;->access$300(Lcom/touchtype/personalizer/PersonalizerService;IIZ)V

    .line 305
    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerService$RunPersonalizer;->this$0:Lcom/touchtype/personalizer/PersonalizerService;

    # invokes: Lcom/touchtype/personalizer/PersonalizerService;->writeStoredState()V
    invoke-static {v0}, Lcom/touchtype/personalizer/PersonalizerService;->access$500(Lcom/touchtype/personalizer/PersonalizerService;)V

    .line 306
    iget-object v8, p0, Lcom/touchtype/personalizer/PersonalizerService$RunPersonalizer;->this$0:Lcom/touchtype/personalizer/PersonalizerService;

    new-instance v0, Lcom/touchtype/personalizer/PersonalizationRequest;

    iget-object v1, p0, Lcom/touchtype/personalizer/PersonalizerService$RunPersonalizer;->mId:Ljava/lang/String;

    iget-object v2, p0, Lcom/touchtype/personalizer/PersonalizerService$RunPersonalizer;->mService:Ljava/lang/String;

    iget-object v3, p0, Lcom/touchtype/personalizer/PersonalizerService$RunPersonalizer;->mParams:Ljava/lang/String;

    iget-object v4, p0, Lcom/touchtype/personalizer/PersonalizerService$RunPersonalizer;->mModelname:Ljava/lang/String;

    iget-object v5, p0, Lcom/touchtype/personalizer/PersonalizerService$RunPersonalizer;->mPersonalizationListener:Lcom/touchtype/personalizer/PersonalizationListener;

    iget-object v6, p0, Lcom/touchtype/personalizer/PersonalizerService$RunPersonalizer;->this$0:Lcom/touchtype/personalizer/PersonalizerService;

    invoke-virtual {v6}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct/range {v0 .. v7}, Lcom/touchtype/personalizer/PersonalizationRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/touchtype/personalizer/PersonalizationListener;Landroid/content/Context;Lcom/touchtype_fluency/util/LanguagePackManager;)V

    # setter for: Lcom/touchtype/personalizer/PersonalizerService;->mRequest:Lcom/touchtype/personalizer/PersonalizationRequest;
    invoke-static {v8, v0}, Lcom/touchtype/personalizer/PersonalizerService;->access$902(Lcom/touchtype/personalizer/PersonalizerService;Lcom/touchtype/personalizer/PersonalizationRequest;)Lcom/touchtype/personalizer/PersonalizationRequest;

    .line 307
    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerService$RunPersonalizer;->this$0:Lcom/touchtype/personalizer/PersonalizerService;

    # getter for: Lcom/touchtype/personalizer/PersonalizerService;->mRequest:Lcom/touchtype/personalizer/PersonalizationRequest;
    invoke-static {v0}, Lcom/touchtype/personalizer/PersonalizerService;->access$900(Lcom/touchtype/personalizer/PersonalizerService;)Lcom/touchtype/personalizer/PersonalizationRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/touchtype/personalizer/PersonalizationRequest;->start()V

    goto :goto_0
.end method
