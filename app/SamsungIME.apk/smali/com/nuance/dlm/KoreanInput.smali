.class public Lcom/nuance/dlm/KoreanInput;
.super Ljava/lang/Object;
.source "KoreanInput.java"

# interfaces
.implements Lcom/nuance/swypeconnect/ac/ACDlmService$ACKoreanDlmDb;


# static fields
.field public static final TAG:Ljava/lang/String; = "ACDownloadManager"


# instance fields
.field private callback:Lcom/nuance/swypeconnect/ac/ACDlmService$ACKoreanDlmEventCallback;

.field private service:Lcom/nuance/swypeconnect/ac/ACDlmService;


# direct methods
.method public constructor <init>(Lcom/nuance/swypeconnect/ac/ACDlmService;)V
    .locals 2
    .param p1, "service"    # Lcom/nuance/swypeconnect/ac/ACDlmService;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/nuance/dlm/KoreanInput;->service:Lcom/nuance/swypeconnect/ac/ACDlmService;

    .line 22
    :try_start_0
    iget-object v1, p0, Lcom/nuance/dlm/KoreanInput;->service:Lcom/nuance/swypeconnect/ac/ACDlmService;

    invoke-virtual {v1, p0}, Lcom/nuance/swypeconnect/ac/ACDlmService;->bindKoreanDlm(Lcom/nuance/swypeconnect/ac/ACDlmService$ACKoreanDlmDb;)Lcom/nuance/swypeconnect/ac/ACDlmService$ACKoreanDlmEventCallback;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/dlm/KoreanInput;->callback:Lcom/nuance/swypeconnect/ac/ACDlmService$ACKoreanDlmEventCallback;
    :try_end_0
    .catch Lcom/nuance/swypeconnect/ac/ACException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    :goto_0
    invoke-direct {p0}, Lcom/nuance/dlm/KoreanInput;->acKoreanRegisterEventHandlerCallback()I

    .line 29
    return-void

    .line 23
    :catch_0
    move-exception v0

    .line 25
    .local v0, "e":Lcom/nuance/swypeconnect/ac/ACException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private final native acKoreanDeleteCategory(I)I
.end method

.method private final native acKoreanDeleteCategoryLanguage(II)I
.end method

.method private final native acKoreanExportAsEvent(ZI)I
.end method

.method private final native acKoreanProcessEvent([B)I
.end method

.method private final native acKoreanRegisterEventHandlerCallback()I
.end method

.method private onEventCallback([BZ)V
    .locals 1
    .param p1, "event"    # [B
    .param p2, "highPriority"    # Z

    .prologue
    .line 36
    iget-object v0, p0, Lcom/nuance/dlm/KoreanInput;->callback:Lcom/nuance/swypeconnect/ac/ACDlmService$ACKoreanDlmEventCallback;

    invoke-virtual {v0, p1, p2}, Lcom/nuance/swypeconnect/ac/ACDlmService$ACKoreanDlmEventCallback;->onKoreanDlmEvent([BZ)V

    .line 37
    return-void
.end method


# virtual methods
.method public deleteCategory(I)V
    .locals 0
    .param p1, "category"    # I

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/nuance/dlm/KoreanInput;->acKoreanDeleteCategory(I)I

    .line 50
    return-void
.end method

.method public deleteCategoryLanguage(II)V
    .locals 0
    .param p1, "category"    # I
    .param p2, "language"    # I

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lcom/nuance/dlm/KoreanInput;->acKoreanDeleteCategoryLanguage(II)I

    .line 54
    return-void
.end method

.method public exportAsEvents(ZI)V
    .locals 0
    .param p1, "usingCategory"    # Z
    .param p2, "category"    # I

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/nuance/dlm/KoreanInput;->acKoreanExportAsEvent(ZI)I

    .line 46
    return-void
.end method

.method public processEvent([B)V
    .locals 2
    .param p1, "event"    # [B

    .prologue
    .line 40
    const-string v0, "ACDownloadManager"

    const-string v1, "KoreanInput-processEvent"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    invoke-direct {p0, p1}, Lcom/nuance/dlm/KoreanInput;->acKoreanProcessEvent([B)I

    .line 42
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/nuance/dlm/KoreanInput;->service:Lcom/nuance/swypeconnect/ac/ACDlmService;

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACDlmService;->releaseKoreanDlm()V

    .line 33
    return-void
.end method
