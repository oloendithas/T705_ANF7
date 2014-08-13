.class Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$23;
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
    .line 1408
    iput-object p1, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$23;->this$0:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 9
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1411
    instance-of v7, p1, Landroid/preference/CheckBoxPreference;

    if-eqz v7, :cond_4

    move-object v0, p1

    .line 1413
    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 1414
    .local v0, "checkPref":Landroid/preference/CheckBoxPreference;
    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v2

    .line 1416
    .local v2, "isChecked":Z
    iget-object v7, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$23;->this$0:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    const-string v8, "SETTINGS_DEFAULT_KEYPAD_POINTING"

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    .line 1418
    .local v1, "cp":Landroid/preference/CheckBoxPreference;
    const/4 v3, 0x0

    .line 1420
    .local v3, "usePointing":Z
    if-eqz v1, :cond_0

    .line 1421
    invoke-virtual {v1}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v3

    .line 1423
    :cond_0
    if-eqz v2, :cond_1

    if-eqz v3, :cond_1

    .line 1424
    invoke-virtual {v0, v6}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 1425
    iget-object v7, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$23;->this$0:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    iput-boolean v5, v7, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->TracePopup:Z

    .line 1426
    iget-object v7, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$23;->this$0:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    iget-object v7, v7, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->traceDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1429
    :cond_1
    const/4 v1, 0x0

    .line 1430
    iget-object v7, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$23;->this$0:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    const-string v8, "SETTINGS_DEFAULT_KEYPAD_SWEEPING"

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .end local v1    # "cp":Landroid/preference/CheckBoxPreference;
    check-cast v1, Landroid/preference/CheckBoxPreference;

    .line 1432
    .restart local v1    # "cp":Landroid/preference/CheckBoxPreference;
    const/4 v4, 0x0

    .line 1434
    .local v4, "useSweeping":Z
    if-eqz v1, :cond_2

    .line 1435
    invoke-virtual {v1}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v4

    .line 1437
    :cond_2
    if-eqz v2, :cond_3

    if-eqz v4, :cond_3

    .line 1438
    invoke-virtual {v0, v6}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 1439
    iget-object v6, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$23;->this$0:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    iput-boolean v5, v6, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->TracePopup2:Z

    .line 1440
    iget-object v6, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$23;->this$0:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    iget-object v6, v6, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->traceDialog2:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1445
    .end local v0    # "checkPref":Landroid/preference/CheckBoxPreference;
    .end local v1    # "cp":Landroid/preference/CheckBoxPreference;
    .end local v2    # "isChecked":Z
    .end local v3    # "usePointing":Z
    .end local v4    # "useSweeping":Z
    :cond_3
    :goto_0
    return v5

    :cond_4
    move v5, v6

    goto :goto_0
.end method
