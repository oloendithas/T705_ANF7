.class Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$21;
.super Ljava/lang/Object;
.source "SamsungKeypadSettingsFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->onResume()V
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
    .line 1179
    iput-object p1, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$21;->this$0:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1184
    const-string v3, "settings_hold_delay_short"

    invoke-virtual {p2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1185
    # getter for: Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->delayTextForSummary:[Ljava/lang/CharSequence;
    invoke-static {}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->access$300()[Ljava/lang/CharSequence;

    move-result-object v3

    aget-object v2, v3, v2

    invoke-virtual {p1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1186
    const/16 v2, 0xc8

    invoke-static {v2}, Lcom/diotek/ime/framework/repository/KeyboardStatus;->setHoldDelay(I)V

    .line 1202
    :goto_0
    return v1

    .line 1188
    :cond_0
    const-string v3, "settings_hold_delay_medium"

    invoke-virtual {p2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1189
    # getter for: Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->delayTextForSummary:[Ljava/lang/CharSequence;
    invoke-static {}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->access$300()[Ljava/lang/CharSequence;

    move-result-object v2

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1190
    const/16 v2, 0x12c

    invoke-static {v2}, Lcom/diotek/ime/framework/repository/KeyboardStatus;->setHoldDelay(I)V

    goto :goto_0

    .line 1192
    :cond_1
    const-string v3, "settings_hold_delay_long"

    invoke-virtual {p2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1193
    # getter for: Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->delayTextForSummary:[Ljava/lang/CharSequence;
    invoke-static {}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->access$300()[Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {p1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1194
    const/16 v2, 0x1f4

    invoke-static {v2}, Lcom/diotek/ime/framework/repository/KeyboardStatus;->setHoldDelay(I)V

    goto :goto_0

    .line 1196
    :cond_2
    const-string v1, "settings_hold_delay_custom"

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1197
    iget-object v1, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$21;->this$0:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    # getter for: Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;
    invoke-static {v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->access$000(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0d02f1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1198
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$21;->this$0:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    # getter for: Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->settingActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->access$100(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)Landroid/app/Activity;

    move-result-object v1

    const-class v3, Lcom/diotek/ime/implement/setting/TapAndHoldDelayCustom;

    invoke-direct {v0, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1199
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$21;->this$0:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    invoke-virtual {v1, v0}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    move v1, v2

    .line 1200
    goto :goto_0

    .end local v0    # "intent":Landroid/content/Intent;
    :cond_3
    move v1, v2

    .line 1202
    goto :goto_0
.end method
