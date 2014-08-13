.class Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$20;
.super Ljava/lang/Object;
.source "SamsungKeypadSettingsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;


# direct methods
.method constructor <init>(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)V
    .locals 0

    .prologue
    .line 790
    iput-object p1, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$20;->this$0:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

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

    .line 792
    iget-object v3, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$20;->this$0:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    const-string v4, "SETTINGS_DEFAULT_TRACE"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 793
    .local v0, "cp":Landroid/preference/CheckBoxPreference;
    if-eqz v0, :cond_0

    .line 794
    invoke-virtual {v0, v5}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 796
    :cond_0
    if-nez v0, :cond_1

    iget-object v3, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$20;->this$0:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    # getter for: Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mIsKorMode:Z
    invoke-static {v3}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->access$200(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$20;->this$0:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    # getter for: Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;
    invoke-static {v3}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->access$000(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 797
    iget-object v3, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$20;->this$0:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    # getter for: Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;
    invoke-static {v3}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->access$000(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v3

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 798
    .local v2, "sharedPref":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 799
    .local v1, "edit":Landroid/content/SharedPreferences$Editor;
    const-string v3, "SETTINGS_DEFAULT_TRACE"

    invoke-interface {v1, v3, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 800
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 802
    .end local v1    # "edit":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "sharedPref":Landroid/content/SharedPreferences;
    :cond_1
    iget-object v3, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$20;->this$0:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    iput-boolean v5, v3, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->SwipePopup:Z

    .line 803
    iget-object v3, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$20;->this$0:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    const-string v4, "SETTINGS_DEFAULT_KEYPAD_SWEEPING"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .end local v0    # "cp":Landroid/preference/CheckBoxPreference;
    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 804
    .restart local v0    # "cp":Landroid/preference/CheckBoxPreference;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 805
    return-void
.end method
