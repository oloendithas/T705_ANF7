.class Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper$2;
.super Lcom/touchtype_fluency/util/LoadProgressListener;
.source "SwiftkeyWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;


# direct methods
.method constructor <init>(Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper$2;->this$0:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;

    invoke-direct {p0}, Lcom/touchtype_fluency/util/LoadProgressListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Z)V
    .locals 3
    .param p1, "success"    # Z

    .prologue
    const/high16 v2, 0x6b6f0000

    .line 135
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper$2;->this$0:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;

    const/4 v1, 0x1

    # invokes: Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->clearLoadLangugagePackFlag(I)Z
    invoke-static {v0, v1}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->access$200(Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper$2;->this$0:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;

    const/4 v1, 0x0

    # setter for: Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mLoadingLanguagePacks:Z
    invoke-static {v0, v1}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->access$302(Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;Z)Z

    .line 137
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper$2;->this$0:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;

    # invokes: Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->setSessionPrivateSetting()V
    invoke-static {v0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->access$400(Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;)V

    .line 138
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper$2;->this$0:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;

    # getter for: Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;
    invoke-static {v0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->access$500(Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;)Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->getSwiftKeyVersion()Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyDatatype$SWIFTKEY_VERSION;

    move-result-object v0

    sget-object v1, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyDatatype$SWIFTKEY_VERSION;->SWIFTKEY_VERSION_1_5:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyDatatype$SWIFTKEY_VERSION;

    if-ne v0, v1, :cond_0

    .line 139
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper$2;->this$0:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;

    # invokes: Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->getCurrentLangauge()I
    invoke-static {v0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->access$000(Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;)I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 140
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper$2;->this$0:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;

    # getter for: Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;
    invoke-static {v0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->access$500(Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;)Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->loadKorCharacterMap(I)V

    .line 144
    :cond_0
    return-void
.end method

.method public onLoaded(Lcom/touchtype_fluency/util/LanguagePack;Z)V
    .locals 4
    .param p1, "language"    # Lcom/touchtype_fluency/util/LanguagePack;
    .param p2, "success"    # Z

    .prologue
    const/16 v3, 0x14

    .line 121
    iget-object v2, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper$2;->this$0:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;

    # invokes: Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->getCurrentLangauge()I
    invoke-static {v2}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->access$000(Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;)I

    move-result v2

    invoke-static {v2}, Lcom/diotek/ime/framework/common/LanguageID;->getCode(I)Ljava/lang/String;

    move-result-object v0

    .line 122
    .local v0, "currentLangCode":Ljava/lang/String;
    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/touchtype_fluency/util/LanguagePack;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_0

    .line 123
    iget-object v2, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper$2;->this$0:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;

    invoke-virtual {v2}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->updateSelectList()I

    .line 124
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 125
    .local v1, "msg":Landroid/os/Message;
    iput v3, v1, Landroid/os/Message;->what:I

    .line 126
    iget-object v2, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper$2;->this$0:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;

    # getter for: Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->access$100(Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 127
    iget-object v2, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper$2;->this$0:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;

    # getter for: Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->access$100(Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 128
    iget-object v2, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper$2;->this$0:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;

    # getter for: Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->access$100(Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 131
    .end local v1    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method
