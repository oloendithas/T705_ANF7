.class public Lcom/sec/android/inputmethod/SamsungKeypadSettings;
.super Landroid/app/Activity;
.source "SamsungKeypadSettings.java"


# instance fields
.field mSamsungKeypadSettingsFragment:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 7
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->mSamsungKeypadSettingsFragment:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 10
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 12
    new-instance v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    invoke-direct {v0}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;-><init>()V

    iput-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->mSamsungKeypadSettingsFragment:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    .line 13
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x1020002

    iget-object v2, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->mSamsungKeypadSettingsFragment:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 15
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 19
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 20
    if-eqz p1, :cond_3

    .line 21
    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->mSamsungKeypadSettingsFragment:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    iget-boolean v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->PointingPopup:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->mSamsungKeypadSettingsFragment:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->pointingDialog:Landroid/app/AlertDialog$Builder;

    if-eqz v0, :cond_0

    .line 23
    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->mSamsungKeypadSettingsFragment:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->pointingDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 25
    :cond_0
    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->mSamsungKeypadSettingsFragment:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    iget-boolean v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->TracePopup:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->mSamsungKeypadSettingsFragment:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->traceDialog:Landroid/app/AlertDialog$Builder;

    if-eqz v0, :cond_1

    .line 27
    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->mSamsungKeypadSettingsFragment:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->traceDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 30
    :cond_1
    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->mSamsungKeypadSettingsFragment:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    iget-boolean v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->TracePopup2:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->mSamsungKeypadSettingsFragment:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->traceDialog2:Landroid/app/AlertDialog$Builder;

    if-eqz v0, :cond_2

    .line 32
    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->mSamsungKeypadSettingsFragment:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->traceDialog2:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 35
    :cond_2
    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->mSamsungKeypadSettingsFragment:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    iget-boolean v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->SwipePopup:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->mSamsungKeypadSettingsFragment:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->swipeDialog:Landroid/app/AlertDialog$Builder;

    if-eqz v0, :cond_3

    .line 37
    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->mSamsungKeypadSettingsFragment:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->swipeDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 40
    :cond_3
    return-void
.end method
