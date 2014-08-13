.class Lcom/diotek/ime/implement/setting/LanguagesSettings$1;
.super Ljava/lang/Object;
.source "LanguagesSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/diotek/ime/implement/setting/LanguagesSettings;->getSystemLanguageChangedListener()Landroid/preference/Preference$OnPreferenceChangeListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/diotek/ime/implement/setting/LanguagesSettings;


# direct methods
.method constructor <init>(Lcom/diotek/ime/implement/setting/LanguagesSettings;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/diotek/ime/implement/setting/LanguagesSettings$1;->this$0:Lcom/diotek/ime/implement/setting/LanguagesSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v5, 0x0

    .line 101
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    .local v2, "newBoolean":Z
    move-object v0, p1

    .line 102
    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 103
    .local v0, "cp":Landroid/preference/CheckBoxPreference;
    invoke-virtual {v0, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 104
    if-eqz v2, :cond_0

    .line 105
    iget-object v4, p0, Lcom/diotek/ime/implement/setting/LanguagesSettings$1;->this$0:Lcom/diotek/ime/implement/setting/LanguagesSettings;

    # invokes: Lcom/diotek/ime/implement/setting/LanguagesSettings;->initLanguageSettingsWithSystemLocale()V
    invoke-static {v4}, Lcom/diotek/ime/implement/setting/LanguagesSettings;->access$000(Lcom/diotek/ime/implement/setting/LanguagesSettings;)V

    .line 114
    :goto_0
    return v5

    .line 109
    :cond_0
    iget-object v4, p0, Lcom/diotek/ime/implement/setting/LanguagesSettings$1;->this$0:Lcom/diotek/ime/implement/setting/LanguagesSettings;

    # getter for: Lcom/diotek/ime/implement/setting/LanguagesSettings;->mRepository:Lcom/diotek/ime/framework/repository/Repository;
    invoke-static {v4}, Lcom/diotek/ime/implement/setting/LanguagesSettings;->access$100(Lcom/diotek/ime/implement/setting/LanguagesSettings;)Lcom/diotek/ime/framework/repository/Repository;

    move-result-object v4

    invoke-interface {v4}, Lcom/diotek/ime/framework/repository/Repository;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v3

    .line 110
    .local v3, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 111
    .local v1, "edit":Landroid/content/SharedPreferences$Editor;
    const-string v4, "SETTINGS_DEFAULT_USE_SYSTEM_LANGUAGE"

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 112
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method
