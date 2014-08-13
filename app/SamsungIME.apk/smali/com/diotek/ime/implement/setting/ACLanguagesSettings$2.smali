.class Lcom/diotek/ime/implement/setting/ACLanguagesSettings$2;
.super Ljava/lang/Object;
.source "ACLanguagesSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/diotek/ime/implement/setting/ACLanguagesSettings;->showListUpdateGuideDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/diotek/ime/implement/setting/ACLanguagesSettings;


# direct methods
.method constructor <init>(Lcom/diotek/ime/implement/setting/ACLanguagesSettings;)V
    .locals 0

    .prologue
    .line 631
    iput-object p1, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettings$2;->this$0:Lcom/diotek/ime/implement/setting/ACLanguagesSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "di"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 635
    iget-object v3, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettings$2;->this$0:Lcom/diotek/ime/implement/setting/ACLanguagesSettings;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 637
    .local v2, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 638
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v3, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettings$2;->this$0:Lcom/diotek/ime/implement/setting/ACLanguagesSettings;

    # getter for: Lcom/diotek/ime/implement/setting/ACLanguagesSettings;->mIsCheckboxDontShowDownloadList:Z
    invoke-static {v3}, Lcom/diotek/ime/implement/setting/ACLanguagesSettings;->access$000(Lcom/diotek/ime/implement/setting/ACLanguagesSettings;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 639
    const-string v3, "first_swiftkey_download_list_execution"

    invoke-interface {v0, v3, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 643
    :goto_0
    const-string v3, "swiftkey_download_list_execution"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 644
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 646
    const v1, 0x7f0d01e0

    .line 647
    .local v1, "resId":I
    iget-object v3, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettings$2;->this$0:Lcom/diotek/ime/implement/setting/ACLanguagesSettings;

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettings$2;->this$0:Lcom/diotek/ime/implement/setting/ACLanguagesSettings;

    invoke-virtual {v4}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 648
    iget-object v3, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettings$2;->this$0:Lcom/diotek/ime/implement/setting/ACLanguagesSettings;

    invoke-virtual {v3}, Lcom/diotek/ime/implement/setting/ACLanguagesSettings;->rebuildLanguageList()V

    .line 649
    return-void

    .line 641
    .end local v1    # "resId":I
    :cond_0
    const-string v3, "first_swiftkey_download_list_execution"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method
