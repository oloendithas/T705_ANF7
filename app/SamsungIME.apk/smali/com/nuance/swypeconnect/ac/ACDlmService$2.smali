.class Lcom/nuance/swypeconnect/ac/ACDlmService$2;
.super Ljava/lang/Object;
.source "ACDlmService.java"

# interfaces
.implements Lcom/nuance/connect/api/DLMService$DlmEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swypeconnect/ac/ACDlmService;->bindKoreanDlm(Lcom/nuance/swypeconnect/ac/ACDlmService$ACKoreanDlmDb;)Lcom/nuance/swypeconnect/ac/ACDlmService$ACKoreanDlmEventCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swypeconnect/ac/ACDlmService;


# direct methods
.method constructor <init>(Lcom/nuance/swypeconnect/ac/ACDlmService;)V
    .locals 0

    .prologue
    .line 464
    iput-object p1, p0, Lcom/nuance/swypeconnect/ac/ACDlmService$2;->this$0:Lcom/nuance/swypeconnect/ac/ACDlmService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public backupDlm()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 475
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACDlmService$2;->this$0:Lcom/nuance/swypeconnect/ac/ACDlmService;

    # getter for: Lcom/nuance/swypeconnect/ac/ACDlmService;->koreanDlmDb:Lcom/nuance/swypeconnect/ac/ACDlmService$ACKoreanDlmDb;
    invoke-static {v0}, Lcom/nuance/swypeconnect/ac/ACDlmService;->access$300(Lcom/nuance/swypeconnect/ac/ACDlmService;)Lcom/nuance/swypeconnect/ac/ACDlmService$ACKoreanDlmDb;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v2, v1}, Lcom/nuance/swypeconnect/ac/ACDlmService$ACKoreanDlmDb;->exportAsEvents(ZI)V

    .line 476
    return v2
.end method

.method public processDlmDelete(I)Z
    .locals 2
    .param p1, "language"    # I

    .prologue
    .line 481
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACDlmService$2;->this$0:Lcom/nuance/swypeconnect/ac/ACDlmService;

    # getter for: Lcom/nuance/swypeconnect/ac/ACDlmService;->koreanDlmDb:Lcom/nuance/swypeconnect/ac/ACDlmService$ACKoreanDlmDb;
    invoke-static {v0}, Lcom/nuance/swypeconnect/ac/ACDlmService;->access$300(Lcom/nuance/swypeconnect/ac/ACDlmService;)Lcom/nuance/swypeconnect/ac/ACDlmService$ACKoreanDlmDb;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1, p1}, Lcom/nuance/swypeconnect/ac/ACDlmService$ACKoreanDlmDb;->deleteCategoryLanguage(II)V

    .line 482
    const/4 v0, 0x1

    return v0
.end method

.method public processEvent(Ljava/lang/String;)Z
    .locals 2
    .param p1, "event"    # Ljava/lang/String;

    .prologue
    .line 469
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACDlmService$2;->this$0:Lcom/nuance/swypeconnect/ac/ACDlmService;

    # getter for: Lcom/nuance/swypeconnect/ac/ACDlmService;->koreanDlmDb:Lcom/nuance/swypeconnect/ac/ACDlmService$ACKoreanDlmDb;
    invoke-static {v0}, Lcom/nuance/swypeconnect/ac/ACDlmService;->access$300(Lcom/nuance/swypeconnect/ac/ACDlmService;)Lcom/nuance/swypeconnect/ac/ACDlmService$ACKoreanDlmDb;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {p1, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/swypeconnect/ac/ACDlmService$ACKoreanDlmDb;->processEvent([B)V

    .line 470
    const/4 v0, 0x1

    return v0
.end method
