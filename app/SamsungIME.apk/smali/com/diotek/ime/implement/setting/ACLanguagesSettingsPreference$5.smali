.class Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference$5;
.super Ljava/lang/Object;
.source "ACLanguagesSettingsPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->MobileDataWarningForWiFi()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;


# direct methods
.method constructor <init>(Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;)V
    .locals 0

    .prologue
    .line 485
    iput-object p1, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference$5;->this$0:Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "di"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 488
    iget-object v2, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference$5;->this$0:Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;

    # getter for: Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->parent:Lcom/diotek/ime/implement/setting/ACLanguagesSettings;
    invoke-static {v2}, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->access$100(Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;)Lcom/diotek/ime/implement/setting/ACLanguagesSettings;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 489
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 491
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v2, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference$5;->this$0:Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;

    # getter for: Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->mIsCheckboxDontShowDownloadForWifi:Z
    invoke-static {v2}, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->access$600(Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 492
    const-string v2, "first_swiftkey_download_execution"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 496
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 497
    iget-object v2, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference$5;->this$0:Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;

    # invokes: Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->startDownload()V
    invoke-static {v2}, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->access$400(Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;)V

    .line 498
    return-void

    .line 494
    :cond_0
    const-string v2, "first_swiftkey_download_execution"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method
