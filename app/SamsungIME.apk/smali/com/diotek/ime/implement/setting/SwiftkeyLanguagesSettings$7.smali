.class Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings$7;
.super Ljava/lang/Object;
.source "SwiftkeyLanguagesSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;->showListUpdateGuideDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;


# direct methods
.method constructor <init>(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;)V
    .locals 0

    .prologue
    .line 400
    iput-object p1, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings$7;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "di"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 404
    iget-object v2, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings$7;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 406
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 407
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v2, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings$7;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;

    const-string v3, "swiftkey_download_list_checkbox"

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    # setter for: Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;->mIsCheckboxDontShowDownloadList:Z
    invoke-static {v2, v3}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;->access$502(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;Z)Z

    .line 408
    iget-object v2, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings$7;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;

    # getter for: Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;->mIsCheckboxDontShowDownloadList:Z
    invoke-static {v2}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;->access$500(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 409
    const-string v2, "first_swiftkey_download_list_execution"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 413
    :goto_0
    const-string v2, "swiftkey_download_list_execution"

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 414
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 415
    iget-object v2, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings$7;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;

    invoke-virtual {v2}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;->updateLPlist()V

    .line 416
    # setter for: Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;->isDialogShownState:Z
    invoke-static {v4}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;->access$602(Z)Z

    .line 417
    return-void

    .line 411
    :cond_0
    const-string v2, "first_swiftkey_download_list_execution"

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method
