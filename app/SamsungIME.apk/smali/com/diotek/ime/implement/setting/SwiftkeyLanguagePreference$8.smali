.class Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$8;
.super Ljava/lang/Object;
.source "SwiftkeyLanguagePreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->MobileDataWarningForWiFi()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;


# direct methods
.method constructor <init>(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;)V
    .locals 0

    .prologue
    .line 809
    iput-object p1, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$8;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "di"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 812
    iget-object v2, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$8;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;

    # getter for: Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->parent:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;
    invoke-static {v2}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->access$800(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;)Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 813
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 815
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v2, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$8;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;

    # getter for: Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mIsCheckboxDontShowDownloadForWifi:Z
    invoke-static {v2}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->access$2000(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 816
    const-string v2, "first_swiftkey_download_execution"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 820
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 821
    iget-object v2, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$8;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;

    # invokes: Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->downloadlanguagepack()V
    invoke-static {v2}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->access$300(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;)V

    .line 822
    return-void

    .line 818
    :cond_0
    const-string v2, "first_swiftkey_download_execution"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method
