.class Lcom/diotek/ime/implement/setting/Xt9AdvancedSettings$7;
.super Ljava/lang/Object;
.source "Xt9AdvancedSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/diotek/ime/implement/setting/Xt9AdvancedSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/diotek/ime/implement/setting/Xt9AdvancedSettings;


# direct methods
.method constructor <init>(Lcom/diotek/ime/implement/setting/Xt9AdvancedSettings;)V
    .locals 0

    .prologue
    .line 173
    iput-object p1, p0, Lcom/diotek/ime/implement/setting/Xt9AdvancedSettings$7;->this$0:Lcom/diotek/ime/implement/setting/Xt9AdvancedSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 11
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 176
    instance-of v9, p1, Landroid/preference/CheckBoxPreference;

    if-eqz v9, :cond_5

    move-object v0, p1

    .line 178
    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 179
    .local v0, "checkPref":Landroid/preference/CheckBoxPreference;
    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v3

    .line 181
    .local v3, "isChecked":Z
    iget-object v9, p0, Lcom/diotek/ime/implement/setting/Xt9AdvancedSettings$7;->this$0:Lcom/diotek/ime/implement/setting/Xt9AdvancedSettings;

    const-string v10, "SETTINGS_DEFAULT_KEYPAD_POINTING"

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    .line 182
    .local v1, "cp":Landroid/preference/CheckBoxPreference;
    const/4 v5, 0x0

    .line 183
    .local v5, "usePointing":Z
    if-eqz v1, :cond_2

    .line 184
    invoke-virtual {v1}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v5

    .line 190
    :goto_0
    if-eqz v3, :cond_0

    if-eqz v5, :cond_0

    .line 191
    # setter for: Lcom/diotek/ime/implement/setting/Xt9AdvancedSettings;->TracePopup:Z
    invoke-static {v7}, Lcom/diotek/ime/implement/setting/Xt9AdvancedSettings;->access$002(Z)Z

    .line 192
    iget-object v9, p0, Lcom/diotek/ime/implement/setting/Xt9AdvancedSettings$7;->this$0:Lcom/diotek/ime/implement/setting/Xt9AdvancedSettings;

    iget-object v9, v9, Lcom/diotek/ime/implement/setting/Xt9AdvancedSettings;->traceDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 195
    :cond_0
    const/4 v1, 0x0

    .line 196
    const/4 v6, 0x0

    .line 197
    .local v6, "useSweeping":Z
    iget-object v9, p0, Lcom/diotek/ime/implement/setting/Xt9AdvancedSettings$7;->this$0:Lcom/diotek/ime/implement/setting/Xt9AdvancedSettings;

    const-string v10, "SETTINGS_DEFAULT_KEYPAD_SWEEPING"

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .end local v1    # "cp":Landroid/preference/CheckBoxPreference;
    check-cast v1, Landroid/preference/CheckBoxPreference;

    .line 198
    .restart local v1    # "cp":Landroid/preference/CheckBoxPreference;
    if-eqz v1, :cond_4

    .line 199
    invoke-virtual {v1}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v6

    .line 205
    :goto_1
    if-eqz v3, :cond_1

    if-eqz v6, :cond_1

    .line 206
    # setter for: Lcom/diotek/ime/implement/setting/Xt9AdvancedSettings;->TracePopup2:Z
    invoke-static {v7}, Lcom/diotek/ime/implement/setting/Xt9AdvancedSettings;->access$202(Z)Z

    .line 207
    iget-object v8, p0, Lcom/diotek/ime/implement/setting/Xt9AdvancedSettings$7;->this$0:Lcom/diotek/ime/implement/setting/Xt9AdvancedSettings;

    iget-object v8, v8, Lcom/diotek/ime/implement/setting/Xt9AdvancedSettings;->traceDialog2:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 212
    .end local v0    # "checkPref":Landroid/preference/CheckBoxPreference;
    .end local v1    # "cp":Landroid/preference/CheckBoxPreference;
    .end local v3    # "isChecked":Z
    .end local v5    # "usePointing":Z
    .end local v6    # "useSweeping":Z
    :cond_1
    :goto_2
    return v7

    .line 186
    .restart local v0    # "checkPref":Landroid/preference/CheckBoxPreference;
    .restart local v1    # "cp":Landroid/preference/CheckBoxPreference;
    .restart local v3    # "isChecked":Z
    .restart local v5    # "usePointing":Z
    :cond_2
    iget-object v9, p0, Lcom/diotek/ime/implement/setting/Xt9AdvancedSettings$7;->this$0:Lcom/diotek/ime/implement/setting/Xt9AdvancedSettings;

    # getter for: Lcom/diotek/ime/implement/setting/Xt9AdvancedSettings;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;
    invoke-static {v9}, Lcom/diotek/ime/implement/setting/Xt9AdvancedSettings;->access$100(Lcom/diotek/ime/implement/setting/Xt9AdvancedSettings;)Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v9

    invoke-interface {v9}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 187
    .local v4, "sharedPref":Landroid/content/SharedPreferences;
    iget-object v9, p0, Lcom/diotek/ime/implement/setting/Xt9AdvancedSettings$7;->this$0:Lcom/diotek/ime/implement/setting/Xt9AdvancedSettings;

    iget-object v9, v9, Lcom/diotek/ime/implement/setting/Xt9AdvancedSettings;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v10, "SETTINGS_DEFAULT_KEYPAD_POINTING"

    invoke-interface {v9, v10, v8}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v2

    .line 188
    .local v2, "defaultBoolean":Z
    const-string v9, "SETTINGS_DEFAULT_KEYPAD_POINTING"

    invoke-interface {v4, v9, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/diotek/ime/implement/setting/Xt9AdvancedSettings$7;->this$0:Lcom/diotek/ime/implement/setting/Xt9AdvancedSettings;

    # getter for: Lcom/diotek/ime/implement/setting/Xt9AdvancedSettings;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;
    invoke-static {v9}, Lcom/diotek/ime/implement/setting/Xt9AdvancedSettings;->access$100(Lcom/diotek/ime/implement/setting/Xt9AdvancedSettings;)Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v9

    invoke-interface {v9}, Lcom/diotek/ime/framework/common/InputManager;->isTalkbackEnabled()Z

    move-result v9

    if-nez v9, :cond_3

    move v5, v7

    :goto_3
    goto :goto_0

    :cond_3
    move v5, v8

    goto :goto_3

    .line 201
    .end local v2    # "defaultBoolean":Z
    .end local v4    # "sharedPref":Landroid/content/SharedPreferences;
    .restart local v6    # "useSweeping":Z
    :cond_4
    iget-object v9, p0, Lcom/diotek/ime/implement/setting/Xt9AdvancedSettings$7;->this$0:Lcom/diotek/ime/implement/setting/Xt9AdvancedSettings;

    # getter for: Lcom/diotek/ime/implement/setting/Xt9AdvancedSettings;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;
    invoke-static {v9}, Lcom/diotek/ime/implement/setting/Xt9AdvancedSettings;->access$100(Lcom/diotek/ime/implement/setting/Xt9AdvancedSettings;)Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v9

    invoke-interface {v9}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 202
    .restart local v4    # "sharedPref":Landroid/content/SharedPreferences;
    iget-object v9, p0, Lcom/diotek/ime/implement/setting/Xt9AdvancedSettings$7;->this$0:Lcom/diotek/ime/implement/setting/Xt9AdvancedSettings;

    iget-object v9, v9, Lcom/diotek/ime/implement/setting/Xt9AdvancedSettings;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v10, "SETTINGS_DEFAULT_KEYPAD_SWEEPING"

    invoke-interface {v9, v10, v8}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v2

    .line 203
    .restart local v2    # "defaultBoolean":Z
    const-string v8, "SETTINGS_DEFAULT_KEYPAD_SWEEPING"

    invoke-interface {v4, v8, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    goto :goto_1

    .end local v0    # "checkPref":Landroid/preference/CheckBoxPreference;
    .end local v1    # "cp":Landroid/preference/CheckBoxPreference;
    .end local v2    # "defaultBoolean":Z
    .end local v3    # "isChecked":Z
    .end local v4    # "sharedPref":Landroid/content/SharedPreferences;
    .end local v5    # "usePointing":Z
    .end local v6    # "useSweeping":Z
    :cond_5
    move v7, v8

    .line 212
    goto :goto_2
.end method
