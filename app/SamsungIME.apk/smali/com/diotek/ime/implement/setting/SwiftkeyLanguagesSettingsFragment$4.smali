.class Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment$4;
.super Ljava/lang/Object;
.source "SwiftkeyLanguagesSettingsFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->getSystemLanguageChangedListener()Landroid/preference/Preference$OnPreferenceChangeListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;


# direct methods
.method constructor <init>(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;)V
    .locals 0

    .prologue
    .line 392
    iput-object p1, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment$4;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 7
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v6, 0x0

    .line 395
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_Sip_ConfigLanguageList"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 397
    .local v0, "configLangugaeListValue":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 398
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    .local v3, "newBoolean":Z
    move-object v1, p1

    .line 399
    check-cast v1, Landroid/preference/CheckBoxPreference;

    .line 400
    .local v1, "cp":Landroid/preference/CheckBoxPreference;
    invoke-virtual {v1, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 401
    if-eqz v3, :cond_1

    .line 402
    iget-object v4, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment$4;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;

    iget-object v4, v4, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    if-eqz v4, :cond_0

    .line 403
    iget-object v4, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment$4;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;

    iget-object v4, v4, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->initLanguageSettingsWithSystemLocale()Z

    .line 412
    .end local v1    # "cp":Landroid/preference/CheckBoxPreference;
    .end local v3    # "newBoolean":Z
    :cond_0
    :goto_0
    return v6

    .line 406
    .restart local v1    # "cp":Landroid/preference/CheckBoxPreference;
    .restart local v3    # "newBoolean":Z
    :cond_1
    sget-object v4, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 407
    .local v2, "edit":Landroid/content/SharedPreferences$Editor;
    const-string v4, "SETTINGS_DEFAULT_USE_SYSTEM_LANGUAGE"

    invoke-interface {v2, v4, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 408
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 409
    iget-object v4, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment$4;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->rebuildLanguageList(Z)V

    goto :goto_0
.end method
