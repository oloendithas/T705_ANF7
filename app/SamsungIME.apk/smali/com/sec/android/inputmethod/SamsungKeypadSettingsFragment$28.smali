.class Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$28;
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
    .line 1533
    iput-object p1, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$28;->this$0:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 6
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v4, 0x1

    .line 1537
    iget-object v3, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$28;->this$0:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    iget-object v5, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$28;->this$0:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    # getter for: Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;
    invoke-static {v5}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->access$000(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v5

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->getRepository()Lcom/diotek/ime/framework/repository/Repository;

    move-result-object v5

    iput-object v5, v3, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    .line 1538
    instance-of v3, p1, Landroid/preference/SwitchPreference;

    if-eqz v3, :cond_4

    move-object v2, p1

    .line 1540
    check-cast v2, Landroid/preference/SwitchPreference;

    .line 1541
    .local v2, "switchPref":Landroid/preference/SwitchPreference;
    invoke-virtual {v2}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v1

    .line 1542
    .local v1, "isChecked":Z
    if-nez v1, :cond_0

    move v3, v4

    :goto_0
    invoke-virtual {v2, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 1543
    if-nez v1, :cond_3

    .line 1544
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1545
    .local v0, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$28;->this$0:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    # getter for: Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mIsSwiftKeySDK:Z
    invoke-static {v3}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->access$500(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1547
    iget-object v3, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$28;->this$0:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    # getter for: Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->settingActivity:Landroid/app/Activity;
    invoke-static {v3}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->access$100(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)Landroid/app/Activity;

    move-result-object v3

    const-class v5, Lcom/touchtype/personalizer/PersonalizerSettingsActivity;

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1558
    :goto_1
    iget-object v3, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$28;->this$0:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    invoke-virtual {v3, v0}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 1577
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "isChecked":Z
    .end local v2    # "switchPref":Landroid/preference/SwitchPreference;
    :goto_2
    return v4

    .line 1542
    .restart local v1    # "isChecked":Z
    .restart local v2    # "switchPref":Landroid/preference/SwitchPreference;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 1551
    .restart local v0    # "intent":Landroid/content/Intent;
    :cond_1
    iget-object v3, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$28;->this$0:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    # getter for: Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mXt9Version:I
    invoke-static {v3}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->access$600(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)I

    move-result v3

    if-eqz v3, :cond_2

    .line 1552
    iget-object v3, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$28;->this$0:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    # getter for: Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->settingActivity:Landroid/app/Activity;
    invoke-static {v3}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->access$100(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)Landroid/app/Activity;

    move-result-object v3

    const-class v5, Lcom/diotek/ime/implement/setting/ConnectSetting;

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_1

    .line 1554
    :cond_2
    iget-object v3, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$28;->this$0:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    # getter for: Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->settingActivity:Landroid/app/Activity;
    invoke-static {v3}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->access$100(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)Landroid/app/Activity;

    move-result-object v3

    const-class v5, Lcom/diotek/ime/implement/setting/Xt9AdvancedSettings;

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_1

    .line 1560
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_3
    iget-object v3, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$28;->this$0:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    # getter for: Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mT9Toast:Landroid/widget/Toast;
    invoke-static {v3}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->access$400(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)Landroid/widget/Toast;

    move-result-object v3

    const v5, 0x7f0d0056

    invoke-virtual {v3, v5}, Landroid/widget/Toast;->setText(I)V

    .line 1561
    iget-object v3, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$28;->this$0:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    # getter for: Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mT9Toast:Landroid/widget/Toast;
    invoke-static {v3}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->access$400(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 1565
    .end local v1    # "isChecked":Z
    .end local v2    # "switchPref":Landroid/preference/SwitchPreference;
    :cond_4
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1566
    .restart local v0    # "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$28;->this$0:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    # getter for: Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mIsSwiftKeySDK:Z
    invoke-static {v3}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->access$500(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1567
    iget-object v3, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$28;->this$0:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    # getter for: Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->settingActivity:Landroid/app/Activity;
    invoke-static {v3}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->access$100(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)Landroid/app/Activity;

    move-result-object v3

    const-class v5, Lcom/touchtype/personalizer/PersonalizerSettingsActivity;

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1576
    :goto_3
    iget-object v3, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$28;->this$0:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    invoke-virtual {v3, v0}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    .line 1570
    :cond_5
    iget-object v3, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$28;->this$0:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    # getter for: Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mXt9Version:I
    invoke-static {v3}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->access$600(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)I

    move-result v3

    if-eqz v3, :cond_6

    .line 1571
    iget-object v3, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$28;->this$0:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    # getter for: Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->settingActivity:Landroid/app/Activity;
    invoke-static {v3}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->access$100(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)Landroid/app/Activity;

    move-result-object v3

    const-class v5, Lcom/diotek/ime/implement/setting/ConnectSetting;

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_3

    .line 1573
    :cond_6
    iget-object v3, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$28;->this$0:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    # getter for: Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->settingActivity:Landroid/app/Activity;
    invoke-static {v3}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->access$100(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)Landroid/app/Activity;

    move-result-object v3

    const-class v5, Lcom/diotek/ime/implement/setting/Xt9AdvancedSettings;

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_3
.end method
