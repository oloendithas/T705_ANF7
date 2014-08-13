.class Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$22;
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
    .line 1361
    iput-object p1, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$22;->this$0:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 13
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 1364
    instance-of v11, p1, Landroid/preference/CheckBoxPreference;

    if-eqz v11, :cond_5

    move-object v0, p1

    .line 1366
    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 1367
    .local v0, "checkPref":Landroid/preference/CheckBoxPreference;
    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v2

    .line 1369
    .local v2, "isChecked":Z
    iget-object v11, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$22;->this$0:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    # getter for: Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;
    invoke-static {v11}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->access$000(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v11

    invoke-interface {v11}, Lcom/diotek/ime/framework/common/InputManager;->getRepository()Lcom/diotek/ime/framework/repository/Repository;

    move-result-object v5

    .line 1370
    .local v5, "repository":Lcom/diotek/ime/framework/repository/Repository;
    const-string v11, "INPUT_LANGUAGE"

    const v12, 0x656e4742

    invoke-interface {v5, v11, v12}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v4

    .line 1371
    .local v4, "language":I
    const/high16 v11, -0x10000

    and-int v3, v4, v11

    .line 1373
    .local v3, "langCode":I
    const/4 v1, 0x0

    .line 1374
    .local v1, "cp":Landroid/preference/CheckBoxPreference;
    const/4 v6, 0x0

    .line 1376
    .local v6, "sp":Landroid/preference/SwitchPreference;
    const/4 v7, 0x0

    .line 1377
    .local v7, "useTrace":Z
    const/4 v8, 0x0

    .line 1379
    .local v8, "useXT9":Z
    const/high16 v11, 0x7a680000

    if-ne v3, v11, :cond_3

    .line 1380
    iget-object v11, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$22;->this$0:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    const-string v12, "SETTINGS_DEFAULT_TRACE"

    invoke-virtual {v11, v12}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .end local v1    # "cp":Landroid/preference/CheckBoxPreference;
    check-cast v1, Landroid/preference/CheckBoxPreference;

    .line 1381
    .restart local v1    # "cp":Landroid/preference/CheckBoxPreference;
    if-eqz v1, :cond_0

    .line 1382
    invoke-virtual {v1}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v7

    .line 1384
    :cond_0
    const/4 v8, 0x1

    .line 1395
    :cond_1
    :goto_0
    if-eqz v2, :cond_4

    if-eqz v7, :cond_4

    if-eqz v8, :cond_4

    .line 1396
    invoke-virtual {v0, v10}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 1397
    iget-object v10, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$22;->this$0:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    iput-boolean v9, v10, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->PointingPopup:Z

    .line 1398
    iget-object v10, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$22;->this$0:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    iget-object v10, v10, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->pointingDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v10}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1404
    .end local v0    # "checkPref":Landroid/preference/CheckBoxPreference;
    .end local v1    # "cp":Landroid/preference/CheckBoxPreference;
    .end local v2    # "isChecked":Z
    .end local v3    # "langCode":I
    .end local v4    # "language":I
    .end local v5    # "repository":Lcom/diotek/ime/framework/repository/Repository;
    .end local v6    # "sp":Landroid/preference/SwitchPreference;
    .end local v7    # "useTrace":Z
    .end local v8    # "useXT9":Z
    :cond_2
    :goto_1
    return v9

    .line 1386
    .restart local v0    # "checkPref":Landroid/preference/CheckBoxPreference;
    .restart local v1    # "cp":Landroid/preference/CheckBoxPreference;
    .restart local v2    # "isChecked":Z
    .restart local v3    # "langCode":I
    .restart local v4    # "language":I
    .restart local v5    # "repository":Lcom/diotek/ime/framework/repository/Repository;
    .restart local v6    # "sp":Landroid/preference/SwitchPreference;
    .restart local v7    # "useTrace":Z
    .restart local v8    # "useXT9":Z
    :cond_3
    iget-object v11, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$22;->this$0:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    const-string v12, "SETTINGS_DEFAULT_TRACE"

    invoke-virtual {v11, v12}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .end local v1    # "cp":Landroid/preference/CheckBoxPreference;
    check-cast v1, Landroid/preference/CheckBoxPreference;

    .line 1387
    .restart local v1    # "cp":Landroid/preference/CheckBoxPreference;
    iget-object v11, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$22;->this$0:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    const-string v12, "SETTINGS_DEFAULT_PREDICTION_ON"

    invoke-virtual {v11, v12}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    .end local v6    # "sp":Landroid/preference/SwitchPreference;
    check-cast v6, Landroid/preference/SwitchPreference;

    .line 1389
    .restart local v6    # "sp":Landroid/preference/SwitchPreference;
    if-eqz v1, :cond_1

    if-eqz v6, :cond_1

    .line 1390
    invoke-virtual {v1}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v7

    .line 1391
    invoke-virtual {v6}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v8

    goto :goto_0

    .line 1399
    :cond_4
    if-eqz v2, :cond_2

    if-eqz v7, :cond_2

    if-nez v8, :cond_2

    .line 1400
    invoke-virtual {v1, v10}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_1

    .end local v0    # "checkPref":Landroid/preference/CheckBoxPreference;
    .end local v1    # "cp":Landroid/preference/CheckBoxPreference;
    .end local v2    # "isChecked":Z
    .end local v3    # "langCode":I
    .end local v4    # "language":I
    .end local v5    # "repository":Lcom/diotek/ime/framework/repository/Repository;
    .end local v6    # "sp":Landroid/preference/SwitchPreference;
    .end local v7    # "useTrace":Z
    .end local v8    # "useXT9":Z
    :cond_5
    move v9, v10

    .line 1404
    goto :goto_1
.end method
