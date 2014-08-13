.class Lcom/diotek/ime/implement/setting/ACLanguagesSettings$1;
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
    .line 616
    iput-object p1, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettings$1;->this$0:Lcom/diotek/ime/implement/setting/ACLanguagesSettings;

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

    .line 619
    iget-object v2, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettings$1;->this$0:Lcom/diotek/ime/implement/setting/ACLanguagesSettings;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 621
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 622
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v2, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettings$1;->this$0:Lcom/diotek/ime/implement/setting/ACLanguagesSettings;

    # getter for: Lcom/diotek/ime/implement/setting/ACLanguagesSettings;->mIsCheckboxDontShowDownloadList:Z
    invoke-static {v2}, Lcom/diotek/ime/implement/setting/ACLanguagesSettings;->access$000(Lcom/diotek/ime/implement/setting/ACLanguagesSettings;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 623
    const-string v2, "first_swiftkey_download_list_execution"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 627
    :goto_0
    const-string v2, "swiftkey_download_list_execution"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 628
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 629
    return-void

    .line 625
    :cond_0
    const-string v2, "first_swiftkey_download_list_execution"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method
