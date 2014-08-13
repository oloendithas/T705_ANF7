.class public Lcom/nuance/dlm/ChineseInput;
.super Ljava/lang/Object;
.source "ChineseInput.java"

# interfaces
.implements Lcom/nuance/swypeconnect/ac/ACDlmService$ACChineseDlmDb;


# instance fields
.field private callback:Lcom/nuance/swypeconnect/ac/ACDlmService$ACChineseDlmEventCallback;

.field private service:Lcom/nuance/swypeconnect/ac/ACDlmService;


# direct methods
.method public constructor <init>(Lcom/nuance/swypeconnect/ac/ACDlmService;)V
    .locals 2
    .param p1, "service"    # Lcom/nuance/swypeconnect/ac/ACDlmService;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/nuance/dlm/ChineseInput;->service:Lcom/nuance/swypeconnect/ac/ACDlmService;

    .line 20
    :try_start_0
    iget-object v1, p0, Lcom/nuance/dlm/ChineseInput;->service:Lcom/nuance/swypeconnect/ac/ACDlmService;

    invoke-virtual {v1, p0}, Lcom/nuance/swypeconnect/ac/ACDlmService;->bindChineseDlm(Lcom/nuance/swypeconnect/ac/ACDlmService$ACChineseDlmDb;)Lcom/nuance/swypeconnect/ac/ACDlmService$ACChineseDlmEventCallback;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/dlm/ChineseInput;->callback:Lcom/nuance/swypeconnect/ac/ACDlmService$ACChineseDlmEventCallback;
    :try_end_0
    .catch Lcom/nuance/swypeconnect/ac/ACException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    :goto_0
    invoke-direct {p0}, Lcom/nuance/dlm/ChineseInput;->acChineseRegisterEventHandlerCallback()I

    .line 27
    return-void

    .line 21
    :catch_0
    move-exception v0

    .line 23
    .local v0, "e":Lcom/nuance/swypeconnect/ac/ACException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private final native acChineseDeleteCategory(I)I
.end method

.method private final native acChineseDeleteCategoryLanguage(II)I
.end method

.method private final native acChineseExportAsEvent(ZI)I
.end method

.method private final native acChineseProcessEvent([B)I
.end method

.method private final native acChineseRegisterEventHandlerCallback()I
.end method

.method private onEventCallback([BZ)V
    .locals 1
    .param p1, "event"    # [B
    .param p2, "highPriority"    # Z

    .prologue
    .line 34
    iget-object v0, p0, Lcom/nuance/dlm/ChineseInput;->callback:Lcom/nuance/swypeconnect/ac/ACDlmService$ACChineseDlmEventCallback;

    invoke-virtual {v0, p1, p2}, Lcom/nuance/swypeconnect/ac/ACDlmService$ACChineseDlmEventCallback;->onChineseDlmEvent([BZ)V

    .line 35
    return-void
.end method


# virtual methods
.method public deleteCategory(I)V
    .locals 0
    .param p1, "category"    # I

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/nuance/dlm/ChineseInput;->acChineseDeleteCategory(I)I

    .line 47
    return-void
.end method

.method public deleteCategoryLanguage(II)V
    .locals 0
    .param p1, "category"    # I
    .param p2, "language"    # I

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/nuance/dlm/ChineseInput;->acChineseDeleteCategoryLanguage(II)I

    .line 51
    return-void
.end method

.method public exportAsEvents(ZI)V
    .locals 0
    .param p1, "usingCategory"    # Z
    .param p2, "category"    # I

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/nuance/dlm/ChineseInput;->acChineseExportAsEvent(ZI)I

    .line 43
    return-void
.end method

.method public processEvent([B)V
    .locals 0
    .param p1, "event"    # [B

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/nuance/dlm/ChineseInput;->acChineseProcessEvent([B)I

    .line 39
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/nuance/dlm/ChineseInput;->service:Lcom/nuance/swypeconnect/ac/ACDlmService;

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACDlmService;->releaseChineseDlm()V

    .line 31
    return-void
.end method
