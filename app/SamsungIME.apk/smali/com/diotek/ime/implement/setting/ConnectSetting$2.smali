.class Lcom/diotek/ime/implement/setting/ConnectSetting$2;
.super Ljava/lang/Object;
.source "ConnectSetting.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/diotek/ime/implement/setting/ConnectSetting;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/diotek/ime/implement/setting/ConnectSetting;


# direct methods
.method constructor <init>(Lcom/diotek/ime/implement/setting/ConnectSetting;)V
    .locals 0

    .prologue
    .line 291
    iput-object p1, p0, Lcom/diotek/ime/implement/setting/ConnectSetting$2;->this$0:Lcom/diotek/ime/implement/setting/ConnectSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 5
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v4, 0x1

    .line 294
    instance-of v3, p1, Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_0

    .line 295
    iget-object v3, p0, Lcom/diotek/ime/implement/setting/ConnectSetting$2;->this$0:Lcom/diotek/ime/implement/setting/ConnectSetting;

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .local v2, "sp":Landroid/content/SharedPreferences;
    move-object v0, p1

    .line 296
    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 298
    .local v0, "checkPref":Landroid/preference/CheckBoxPreference;
    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v1

    .line 299
    .local v1, "isChecked":Z
    iget-object v3, p0, Lcom/diotek/ime/implement/setting/ConnectSetting$2;->this$0:Lcom/diotek/ime/implement/setting/ConnectSetting;

    # getter for: Lcom/diotek/ime/implement/setting/ConnectSetting;->mACDownloadManager:Lcom/diotek/ime/framework/acmanager/ACDownloadManager;
    invoke-static {v3}, Lcom/diotek/ime/implement/setting/ConnectSetting;->access$100(Lcom/diotek/ime/implement/setting/ConnectSetting;)Lcom/diotek/ime/framework/acmanager/ACDownloadManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->setUseLivingLanguageFromSetting(Z)V

    .line 301
    if-eqz v1, :cond_0

    const-string v3, "first_live_language_execution"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 302
    iget-object v3, p0, Lcom/diotek/ime/implement/setting/ConnectSetting$2;->this$0:Lcom/diotek/ime/implement/setting/ConnectSetting;

    # invokes: Lcom/diotek/ime/implement/setting/ConnectSetting;->showLiveLanguageGuideDialog()V
    invoke-static {v3}, Lcom/diotek/ime/implement/setting/ConnectSetting;->access$200(Lcom/diotek/ime/implement/setting/ConnectSetting;)V

    .line 305
    .end local v0    # "checkPref":Landroid/preference/CheckBoxPreference;
    .end local v1    # "isChecked":Z
    .end local v2    # "sp":Landroid/content/SharedPreferences;
    :cond_0
    return v4
.end method
