.class Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$8;
.super Ljava/lang/Object;
.source "SamsungKeypadSettingsFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


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
    .line 617
    iput-object p1, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$8;->this$0:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 6
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 620
    instance-of v4, p1, Landroid/preference/CheckBoxPreference;

    if-eqz v4, :cond_0

    move-object v0, p1

    .line 622
    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 623
    .local v0, "checkPref":Landroid/preference/CheckBoxPreference;
    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v2

    .line 624
    .local v2, "isChecked":Z
    if-eqz v2, :cond_0

    .line 625
    iget-object v4, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$8;->this$0:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    # getter for: Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->settingActivity:Landroid/app/Activity;
    invoke-static {v4}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->access$100(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 626
    .local v1, "context":Landroid/content/Context;
    const v4, 0x7f0d006a

    const/4 v5, 0x0

    invoke-static {v1, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    .line 628
    .local v3, "toast":Landroid/widget/Toast;
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 631
    .end local v0    # "checkPref":Landroid/preference/CheckBoxPreference;
    .end local v1    # "context":Landroid/content/Context;
    .end local v2    # "isChecked":Z
    .end local v3    # "toast":Landroid/widget/Toast;
    :cond_0
    const/4 v4, 0x1

    return v4
.end method
