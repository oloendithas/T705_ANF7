.class Landroid/webkitsec/WebViewClassic$RequestFormData;
.super Ljava/lang/Object;
.source "WebViewClassic.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkitsec/WebViewClassic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RequestFormData"
.end annotation


# instance fields
.field private mAutoComplete:Z

.field private mAutoFillable:Z

.field private mName:Ljava/lang/String;

.field private mUpdateMessage:Landroid/os/Message;

.field private mUrl:Ljava/lang/String;

.field private mWebSettings:Landroid/webkitsec/WebSettingsClassic;

.field final synthetic this$0:Landroid/webkitsec/WebViewClassic;


# direct methods
.method public constructor <init>(Landroid/webkitsec/WebViewClassic;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;ZZ)V
    .registers 8
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "msg"    # Landroid/os/Message;
    .param p5, "autoFillable"    # Z
    .param p6, "autoComplete"    # Z

    .prologue
    .line 8159
    iput-object p1, p0, Landroid/webkitsec/WebViewClassic$RequestFormData;->this$0:Landroid/webkitsec/WebViewClassic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8160
    iput-object p2, p0, Landroid/webkitsec/WebViewClassic$RequestFormData;->mName:Ljava/lang/String;

    .line 8161
    invoke-static {p3}, Landroid/webkitsec/WebTextView;->urlForAutoCompleteData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/webkitsec/WebViewClassic$RequestFormData;->mUrl:Ljava/lang/String;

    .line 8162
    iput-object p4, p0, Landroid/webkitsec/WebViewClassic$RequestFormData;->mUpdateMessage:Landroid/os/Message;

    .line 8163
    iput-boolean p5, p0, Landroid/webkitsec/WebViewClassic$RequestFormData;->mAutoFillable:Z

    .line 8164
    iput-boolean p6, p0, Landroid/webkitsec/WebViewClassic$RequestFormData;->mAutoComplete:Z

    .line 8165
    invoke-virtual {p1}, Landroid/webkitsec/WebViewClassic;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v0

    iput-object v0, p0, Landroid/webkitsec/WebViewClassic$RequestFormData;->mWebSettings:Landroid/webkitsec/WebSettingsClassic;

    .line 8166
    return-void
.end method


# virtual methods
.method public run()V
    .registers 13

    .prologue
    const/4 v2, 0x1

    const/4 v5, 0x0

    const/4 v0, 0x5

    .line 8170
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 8172
    .local v10, "pastEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v11, 0x0

    .line 8175
    .local v11, "result":Z
    iget-boolean v1, p0, Landroid/webkitsec/WebViewClassic$RequestFormData;->mAutoFillable:Z

    if-eqz v1, :cond_138

    .line 8179
    iget-object v1, p0, Landroid/webkitsec/WebViewClassic$RequestFormData;->mWebSettings:Landroid/webkitsec/WebSettingsClassic;

    if-eqz v1, :cond_e9

    iget-object v1, p0, Landroid/webkitsec/WebViewClassic$RequestFormData;->mWebSettings:Landroid/webkitsec/WebSettingsClassic;

    invoke-virtual {v1}, Landroid/webkitsec/WebSettingsClassic;->getAutoFillProfile()Landroid/webkitsec/WebSettingsClassic$AutoFillProfile;

    move-result-object v1

    if-eqz v1, :cond_e9

    .line 8180
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Landroid/webkitsec/WebViewClassic$RequestFormData;->this$0:Landroid/webkitsec/WebViewClassic;

    # getter for: Landroid/webkitsec/WebViewClassic;->mWebView:Landroid/webkitsec/WebView;
    invoke-static {v3}, Landroid/webkitsec/WebViewClassic;->access$000(Landroid/webkitsec/WebViewClassic;)Landroid/webkitsec/WebView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10405ed

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/webkitsec/WebViewClassic$RequestFormData;->this$0:Landroid/webkitsec/WebViewClassic;

    # getter for: Landroid/webkitsec/WebViewClassic;->mAutoFillData:Landroid/webkitsec/WebViewCore$AutoFillData;
    invoke-static {v3}, Landroid/webkitsec/WebViewClassic;->access$4900(Landroid/webkitsec/WebViewClassic;)Landroid/webkitsec/WebViewCore$AutoFillData;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkitsec/WebViewCore$AutoFillData;->getPreviewString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v11

    .line 8184
    if-eqz v11, :cond_bc

    .line 8185
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Auto-completing data for field "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, p0, Landroid/webkitsec/WebViewClassic$RequestFormData;->mName:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " succeeded"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move v1, v0

    invoke-static/range {v0 .. v5}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    .line 8194
    :goto_80
    iget-object v0, p0, Landroid/webkitsec/WebViewClassic$RequestFormData;->this$0:Landroid/webkitsec/WebViewClassic;

    # getter for: Landroid/webkitsec/WebViewClassic;->mAutoCompletePopup:Landroid/webkitsec/AutoCompletePopup;
    invoke-static {v0}, Landroid/webkitsec/WebViewClassic;->access$1000(Landroid/webkitsec/WebViewClassic;)Landroid/webkitsec/AutoCompletePopup;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkitsec/AutoCompletePopup;->setIsAutoFillProfileSet(Z)V

    .line 8215
    :goto_89
    iget-boolean v0, p0, Landroid/webkitsec/WebViewClassic$RequestFormData;->mAutoComplete:Z

    if-eqz v0, :cond_9e

    .line 8216
    iget-object v0, p0, Landroid/webkitsec/WebViewClassic$RequestFormData;->this$0:Landroid/webkitsec/WebViewClassic;

    # getter for: Landroid/webkitsec/WebViewClassic;->mDatabase:Landroid/webkitsec/WebViewDatabaseClassic;
    invoke-static {v0}, Landroid/webkitsec/WebViewClassic;->access$5000(Landroid/webkitsec/WebViewClassic;)Landroid/webkitsec/WebViewDatabaseClassic;

    move-result-object v0

    iget-object v1, p0, Landroid/webkitsec/WebViewClassic$RequestFormData;->mUrl:Ljava/lang/String;

    iget-object v2, p0, Landroid/webkitsec/WebViewClassic$RequestFormData;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/webkitsec/WebViewDatabaseClassic;->getFormData(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 8219
    :cond_9e
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_bb

    .line 8220
    new-instance v9, Landroid/widget/ArrayAdapter;

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic$RequestFormData;->this$0:Landroid/webkitsec/WebViewClassic;

    # getter for: Landroid/webkitsec/WebViewClassic;->mContext:Landroid/content/Context;
    invoke-static {v0}, Landroid/webkitsec/WebViewClassic;->access$1300(Landroid/webkitsec/WebViewClassic;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x1090139

    invoke-direct {v9, v0, v1, v10}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 8224
    .local v9, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    iget-object v0, p0, Landroid/webkitsec/WebViewClassic$RequestFormData;->mUpdateMessage:Landroid/os/Message;

    iput-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 8225
    iget-object v0, p0, Landroid/webkitsec/WebViewClassic$RequestFormData;->mUpdateMessage:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 8227
    .end local v9    # "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    :cond_bb
    return-void

    .line 8189
    :cond_bc
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Auto-completing data for field "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/webkitsec/WebViewClassic$RequestFormData;->mName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " failed"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move v3, v0

    move v4, v0

    invoke-static/range {v3 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    goto :goto_80

    .line 8198
    :cond_e9
    iget-object v1, p0, Landroid/webkitsec/WebViewClassic$RequestFormData;->this$0:Landroid/webkitsec/WebViewClassic;

    # getter for: Landroid/webkitsec/WebViewClassic;->mWebView:Landroid/webkitsec/WebView;
    invoke-static {v1}, Landroid/webkitsec/WebViewClassic;->access$000(Landroid/webkitsec/WebViewClassic;)Landroid/webkitsec/WebView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10405ee

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8200
    iget-object v1, p0, Landroid/webkitsec/WebViewClassic$RequestFormData;->this$0:Landroid/webkitsec/WebViewClassic;

    # getter for: Landroid/webkitsec/WebViewClassic;->mAutoCompletePopup:Landroid/webkitsec/AutoCompletePopup;
    invoke-static {v1}, Landroid/webkitsec/WebViewClassic;->access$1000(Landroid/webkitsec/WebViewClassic;)Landroid/webkitsec/AutoCompletePopup;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/webkitsec/AutoCompletePopup;->setIsAutoFillProfileSet(Z)V

    .line 8202
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Auto-completing data for field "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/webkitsec/WebViewClassic$RequestFormData;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " failed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move v3, v0

    move v4, v0

    invoke-static/range {v3 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_89

    .line 8209
    :cond_138
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Auto-completing data for field "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/webkitsec/WebViewClassic$RequestFormData;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " failed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move v3, v0

    move v4, v0

    invoke-static/range {v3 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_89
.end method
