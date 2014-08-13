.class Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$32;
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
    .line 1646
    iput-object p1, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$32;->this$0:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 9
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1649
    instance-of v5, p1, Landroid/preference/SwitchPreference;

    if-eqz v5, :cond_2

    move-object v3, p1

    .line 1651
    check-cast v3, Landroid/preference/SwitchPreference;

    .line 1652
    .local v3, "switchPref":Landroid/preference/SwitchPreference;
    invoke-virtual {v3}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v2

    .line 1653
    .local v2, "isChecked":Z
    if-nez v2, :cond_0

    move v5, v6

    :goto_0
    invoke-virtual {v3, v5}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 1654
    if-nez v2, :cond_1

    .line 1655
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1656
    .local v1, "intent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$32;->this$0:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    # getter for: Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->settingActivity:Landroid/app/Activity;
    invoke-static {v5}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->access$100(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)Landroid/app/Activity;

    move-result-object v5

    const-class v8, Lcom/diotek/ime/implement/setting/KoreanKeypadSettings;

    invoke-virtual {v1, v5, v8}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1657
    iget-object v5, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$32;->this$0:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    invoke-virtual {v5, v1, v7}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1666
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "isChecked":Z
    .end local v3    # "switchPref":Landroid/preference/SwitchPreference;
    :goto_1
    return v6

    .restart local v2    # "isChecked":Z
    .restart local v3    # "switchPref":Landroid/preference/SwitchPreference;
    :cond_0
    move v5, v7

    .line 1653
    goto :goto_0

    .line 1659
    :cond_1
    iget-object v5, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$32;->this$0:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    # getter for: Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->settingActivity:Landroid/app/Activity;
    invoke-static {v5}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->access$100(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 1660
    .local v0, "context":Landroid/content/Context;
    const v5, 0x7f0d0027

    invoke-static {v0, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    .line 1662
    .local v4, "toast":Landroid/widget/Toast;
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .end local v0    # "context":Landroid/content/Context;
    .end local v2    # "isChecked":Z
    .end local v3    # "switchPref":Landroid/preference/SwitchPreference;
    .end local v4    # "toast":Landroid/widget/Toast;
    :cond_2
    move v6, v7

    .line 1666
    goto :goto_1
.end method
