.class Lcom/touchtype/personalizer/PersonalizerSettingsFragment$9;
.super Ljava/lang/Object;
.source "PersonalizerSettingsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->showLiveLanguageGuideDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/touchtype/personalizer/PersonalizerSettingsFragment;


# direct methods
.method constructor <init>(Lcom/touchtype/personalizer/PersonalizerSettingsFragment;)V
    .locals 0

    .prologue
    .line 718
    iput-object p1, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment$9;->this$0:Lcom/touchtype/personalizer/PersonalizerSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "arg0"    # Landroid/content/DialogInterface;

    .prologue
    .line 722
    iget-object v1, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment$9;->this$0:Lcom/touchtype/personalizer/PersonalizerSettingsFragment;

    const-string v2, "SETTINGS_DEFAULT_USE_LIVE_LANGUAGE"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 723
    .local v0, "usePredictiondata":Landroid/preference/CheckBoxPreference;
    if-eqz v0, :cond_0

    .line 724
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 726
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 727
    return-void
.end method
