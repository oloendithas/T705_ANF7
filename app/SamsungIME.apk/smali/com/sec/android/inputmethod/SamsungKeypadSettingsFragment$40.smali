.class Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$40;
.super Ljava/lang/Object;
.source "SamsungKeypadSettingsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->showPredictiveTextGuideDialog()V
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
    .line 1872
    iput-object p1, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$40;->this$0:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v4, 0x0

    .line 1875
    iget-object v2, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$40;->this$0:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    # getter for: Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->settingActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->access$100(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)Landroid/app/Activity;

    move-result-object v2

    const-string v3, "com.sec.android.inputmethod_preferences"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1876
    .local v1, "sPrefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1877
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "first_predictive_text_execution"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1878
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1879
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1881
    iget-object v2, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$40;->this$0:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    # getter for: Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mIsCheckDontShowPredictiveTextGuide:Z
    invoke-static {v2}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->access$900(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1882
    const-string v2, "first_predictive_text_execution"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1883
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1888
    :goto_0
    iget-object v2, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$40;->this$0:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    # getter for: Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;
    invoke-static {v2}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->access$000(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$40;->this$0:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    # getter for: Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mIsCheckDontShowPredictiveTextGuide:Z
    invoke-static {v3}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->access$900(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)Z

    move-result v3

    invoke-interface {v2, v3}, Lcom/diotek/ime/framework/common/InputManager;->setCheckDontShowPredictiveTextGuide(Z)V

    .line 1889
    return-void

    .line 1885
    :cond_0
    const-string v2, "first_predictive_text_execution"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1886
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method
