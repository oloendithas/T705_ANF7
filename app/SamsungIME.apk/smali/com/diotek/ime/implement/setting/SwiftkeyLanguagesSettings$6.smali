.class Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings$6;
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
    .line 383
    iput-object p1, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings$6;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "di"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    const/4 v4, 0x0

    .line 386
    iget-object v2, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings$6;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 388
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 389
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v2, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings$6;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;

    const-string v3, "swiftkey_download_list_checkbox"

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    # setter for: Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;->mIsCheckboxDontShowDownloadList:Z
    invoke-static {v2, v3}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;->access$502(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;Z)Z

    .line 390
    iget-object v2, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings$6;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;

    # getter for: Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;->mIsCheckboxDontShowDownloadList:Z
    invoke-static {v2}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;->access$500(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 391
    const-string v2, "first_swiftkey_download_list_execution"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 395
    :goto_0
    const-string v2, "swiftkey_download_list_execution"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 396
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 397
    # setter for: Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;->isDialogShownState:Z
    invoke-static {v4}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;->access$602(Z)Z

    .line 398
    return-void

    .line 393
    :cond_0
    const-string v2, "first_swiftkey_download_list_execution"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method
