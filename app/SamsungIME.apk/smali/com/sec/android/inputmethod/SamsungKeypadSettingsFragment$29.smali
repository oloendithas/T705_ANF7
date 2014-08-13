.class Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$29;
.super Ljava/lang/Object;
.source "SamsungKeypadSettingsFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


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
    .line 1582
    iput-object p1, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$29;->this$0:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 7
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1586
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 1587
    .local v2, "value":Z
    iget-object v3, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$29;->this$0:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    # getter for: Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;
    invoke-static {v3}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->access$000(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v3

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1588
    .local v1, "sp":Landroid/content/SharedPreferences;
    const-string v3, "SETTINGS_DEFAULT_TRACE"

    invoke-interface {v1, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1589
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1590
    .local v0, "edit":Landroid/content/SharedPreferences$Editor;
    const-string v3, "SETTINGS_DEFAULT_KEYPAD_FLICK_UMLAUT"

    invoke-interface {v0, v3, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1591
    const-string v3, "settings_keyboard_swipe_none"

    invoke-interface {v0, v3, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1592
    const-string v3, "SETTINGS_DEFAULT_TRACE"

    invoke-interface {v0, v3, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1593
    const-string v3, "SETTINGS_DEFAULT_KEYPAD_POINTING"

    invoke-interface {v0, v3, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1594
    iget-object v3, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$29;->this$0:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    iget-object v3, v3, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v4, "SETTINGS_DEFAULT_KEYPAD_FLICK_UMLAUT"

    invoke-interface {v3, v4, v5}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    .line 1595
    iget-object v3, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$29;->this$0:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    iget-object v3, v3, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v4, "SETTINGS_DEFAULT_TRACE"

    invoke-interface {v3, v4, v5}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    .line 1596
    iget-object v3, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$29;->this$0:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    iget-object v3, v3, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v4, "SETTINGS_DEFAULT_KEYPAD_POINTING"

    invoke-interface {v3, v4, v5}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    .line 1597
    const-string v3, "settings_keyboard_swipe"

    const-string v4, "settings_keyboard_swipe_none"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1598
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1601
    .end local v0    # "edit":Landroid/content/SharedPreferences$Editor;
    :cond_0
    iget-object v3, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$29;->this$0:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    # invokes: Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->setSummaryForPredictiveText(Z)V
    invoke-static {v3, v2}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->access$700(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;Z)V

    .line 1603
    return v6
.end method
