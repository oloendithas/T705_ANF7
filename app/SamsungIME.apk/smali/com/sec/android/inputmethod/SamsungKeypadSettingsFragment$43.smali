.class Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$43;
.super Landroid/os/Handler;
.source "SamsungKeypadSettingsFragment.java"


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
    .line 2141
    iput-object p1, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$43;->this$0:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 2144
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 2158
    :cond_0
    :goto_0
    return-void

    .line 2146
    :sswitch_0
    iget-object v2, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$43;->this$0:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->showPinchZoomGuideDialog()V

    goto :goto_0

    .line 2149
    :sswitch_1
    iget-object v2, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$43;->this$0:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    const-string v3, "SETTINGS_DEFAULT_AUTO_CORRECTION"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreference;

    .line 2150
    .local v1, "sp":Landroid/preference/SwitchPreference;
    invoke-virtual {v1}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    .line 2151
    .local v0, "isChecked":Z
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$43;->this$0:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    # invokes: Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->areAllLanguagesDisable()Z
    invoke-static {v2}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->access$1200(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2152
    iget-object v2, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$43;->this$0:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    # invokes: Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->showAutoReplacementGuideDialogToEnalbe()V
    invoke-static {v2}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->access$1300(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)V

    goto :goto_0

    .line 2144
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x30 -> :sswitch_1
    .end sparse-switch
.end method
