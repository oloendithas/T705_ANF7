.class Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$26;
.super Ljava/lang/Object;
.source "SamsungKeypadSettingsFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;
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
    .line 1503
    iput-object p1, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$26;->this$0:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 8
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1506
    iget-object v6, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$26;->this$0:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    # getter for: Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->settingActivity:Landroid/app/Activity;
    invoke-static {v6}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->access$100(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)Landroid/app/Activity;

    move-result-object v6

    const-string v7, "com.sec.android.inputmethod_preferences"

    invoke-virtual {v6, v7, v4}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1507
    .local v2, "sPrefs":Landroid/content/SharedPreferences;
    const-string v6, "SETTINGS_DEFAULT_PREDICTION_ON"

    invoke-interface {v2, v6, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1508
    iget-object v4, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$26;->this$0:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    # getter for: Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mT9Toast:Landroid/widget/Toast;
    invoke-static {v4}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->access$400(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)Landroid/widget/Toast;

    move-result-object v4

    const v6, 0x7f0d0056

    invoke-virtual {v4, v6}, Landroid/widget/Toast;->setText(I)V

    .line 1509
    iget-object v4, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$26;->this$0:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    # getter for: Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mT9Toast:Landroid/widget/Toast;
    invoke-static {v4}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->access$400(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 1520
    :goto_0
    return v5

    .line 1511
    :cond_0
    instance-of v6, p1, Landroid/preference/SwitchPreference;

    if-eqz v6, :cond_2

    move-object v3, p1

    .line 1512
    check-cast v3, Landroid/preference/SwitchPreference;

    .line 1513
    .local v3, "switchPref":Landroid/preference/SwitchPreference;
    invoke-virtual {v3}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v1

    .line 1514
    .local v1, "isChecked":Z
    if-nez v1, :cond_1

    move v4, v5

    :cond_1
    invoke-virtual {v3, v4}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 1516
    .end local v1    # "isChecked":Z
    .end local v3    # "switchPref":Landroid/preference/SwitchPreference;
    :cond_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1517
    .local v0, "intent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$26;->this$0:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    # getter for: Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->settingActivity:Landroid/app/Activity;
    invoke-static {v4}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->access$100(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)Landroid/app/Activity;

    move-result-object v4

    const-class v6, Lcom/diotek/ime/implement/setting/AutoReplacementSettings;

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1518
    iget-object v4, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$26;->this$0:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    invoke-virtual {v4, v0}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
