.class Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$11;
.super Ljava/lang/Object;
.source "SamsungKeypadSettingsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 713
    iput-object p1, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$11;->this$0:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v3, 0x0

    .line 715
    iget-object v1, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$11;->this$0:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    const-string v2, "SETTINGS_DEFAULT_TRACE"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 716
    .local v0, "cp":Landroid/preference/CheckBoxPreference;
    invoke-virtual {v0, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 717
    iget-object v1, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$11;->this$0:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    const-string v2, "SETTINGS_DEFAULT_KEYPAD_POINTING"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .end local v0    # "cp":Landroid/preference/CheckBoxPreference;
    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 718
    .restart local v0    # "cp":Landroid/preference/CheckBoxPreference;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 719
    iget-object v1, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$11;->this$0:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    iput-boolean v3, v1, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->PointingPopup:Z

    .line 720
    return-void
.end method
