.class Lcom/diotek/ime/implement/setting/Xt9AdvancedSettings$3;
.super Ljava/lang/Object;
.source "Xt9AdvancedSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/diotek/ime/implement/setting/Xt9AdvancedSettings;->onCreate(Landroid/os/Bundle;)V
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
    .line 75
    iput-object p1, p0, Lcom/diotek/ime/implement/setting/Xt9AdvancedSettings$3;->this$0:Lcom/diotek/ime/implement/setting/Xt9AdvancedSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v5, 0x0

    .line 77
    iget-object v3, p0, Lcom/diotek/ime/implement/setting/Xt9AdvancedSettings$3;->this$0:Lcom/diotek/ime/implement/setting/Xt9AdvancedSettings;

    const-string v4, "SETTINGS_DEFAULT_KEYPAD_POINTING"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 78
    .local v0, "cp":Landroid/preference/CheckBoxPreference;
    if-eqz v0, :cond_0

    .line 79
    invoke-virtual {v0, v5}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 86
    :goto_0
    # setter for: Lcom/diotek/ime/implement/setting/Xt9AdvancedSettings;->TracePopup:Z
    invoke-static {v5}, Lcom/diotek/ime/implement/setting/Xt9AdvancedSettings;->access$002(Z)Z

    .line 87
    return-void

    .line 81
    :cond_0
    iget-object v3, p0, Lcom/diotek/ime/implement/setting/Xt9AdvancedSettings$3;->this$0:Lcom/diotek/ime/implement/setting/Xt9AdvancedSettings;

    # getter for: Lcom/diotek/ime/implement/setting/Xt9AdvancedSettings;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;
    invoke-static {v3}, Lcom/diotek/ime/implement/setting/Xt9AdvancedSettings;->access$100(Lcom/diotek/ime/implement/setting/Xt9AdvancedSettings;)Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v3

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 82
    .local v2, "sharedPref":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 83
    .local v1, "edit":Landroid/content/SharedPreferences$Editor;
    const-string v3, "SETTINGS_DEFAULT_KEYPAD_POINTING"

    invoke-interface {v1, v3, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 84
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method
