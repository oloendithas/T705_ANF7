.class public Lcom/touchtype/personalizer/DeleteDynamicLanguageModelDialog;
.super Landroid/preference/DialogPreference;
.source "DeleteDynamicLanguageModelDialog.java"


# instance fields
.field private mSettings:Lcom/touchtype/personalizer/PersonalizerSettingsActivity;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 12
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/touchtype/personalizer/DeleteDynamicLanguageModelDialog;->mSettings:Lcom/touchtype/personalizer/PersonalizerSettingsActivity;

    .line 16
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 18
    return-void
.end method


# virtual methods
.method protected onDialogClosed(Z)V
    .locals 2
    .param p1, "positiveResult"    # Z

    .prologue
    .line 36
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onDialogClosed(Z)V

    .line 37
    if-eqz p1, :cond_0

    .line 38
    const-string v0, "Configuration has not been set"

    iget-object v1, p0, Lcom/touchtype/personalizer/DeleteDynamicLanguageModelDialog;->mSettings:Lcom/touchtype/personalizer/PersonalizerSettingsActivity;

    invoke-static {v0, v1}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 39
    iget-object v0, p0, Lcom/touchtype/personalizer/DeleteDynamicLanguageModelDialog;->mSettings:Lcom/touchtype/personalizer/PersonalizerSettingsActivity;

    invoke-virtual {v0}, Lcom/touchtype/personalizer/PersonalizerSettingsActivity;->clearUserModel()V

    .line 41
    :cond_0
    return-void
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 0
    .param p1, "builder"    # Landroid/app/AlertDialog$Builder;

    .prologue
    .line 31
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    .line 32
    return-void
.end method

.method public setConfiguration(Lcom/touchtype/personalizer/PersonalizerSettingsActivity;)V
    .locals 0
    .param p1, "configuration"    # Lcom/touchtype/personalizer/PersonalizerSettingsActivity;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/touchtype/personalizer/DeleteDynamicLanguageModelDialog;->mSettings:Lcom/touchtype/personalizer/PersonalizerSettingsActivity;

    .line 26
    return-void
.end method
