.class Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$25;
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
    .line 1482
    iput-object p1, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$25;->this$0:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 6
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1485
    instance-of v5, p1, Landroid/preference/SwitchPreference;

    if-eqz v5, :cond_1

    move-object v2, p1

    .line 1487
    check-cast v2, Landroid/preference/SwitchPreference;

    .line 1488
    .local v2, "switchPref":Landroid/preference/SwitchPreference;
    invoke-virtual {v2}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v1

    .line 1489
    .local v1, "isChecked":Z
    if-nez v1, :cond_0

    move v3, v4

    :cond_0
    invoke-virtual {v2, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 1490
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1491
    .local v0, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$25;->this$0:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    # getter for: Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->settingActivity:Landroid/app/Activity;
    invoke-static {v3}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->access$100(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)Landroid/app/Activity;

    move-result-object v3

    const-class v5, Lcom/diotek/ime/implement/setting/PhraseSettings;

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1492
    const/high16 v3, 0x34000000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1495
    iget-object v3, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$25;->this$0:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    invoke-virtual {v3, v0}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 1499
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "isChecked":Z
    .end local v2    # "switchPref":Landroid/preference/SwitchPreference;
    :goto_0
    return v4

    :cond_1
    move v4, v3

    goto :goto_0
.end method
