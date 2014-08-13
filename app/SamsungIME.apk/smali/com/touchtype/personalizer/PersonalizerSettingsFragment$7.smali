.class Lcom/touchtype/personalizer/PersonalizerSettingsFragment$7;
.super Ljava/lang/Object;
.source "PersonalizerSettingsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

.field final synthetic val$chkbox:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/touchtype/personalizer/PersonalizerSettingsFragment;Landroid/widget/CheckBox;)V
    .locals 0

    .prologue
    .line 688
    iput-object p1, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment$7;->this$0:Lcom/touchtype/personalizer/PersonalizerSettingsFragment;

    iput-object p2, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment$7;->val$chkbox:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v4, 0x1

    .line 691
    iget-object v2, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment$7;->this$0:Lcom/touchtype/personalizer/PersonalizerSettingsFragment;

    # getter for: Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->mSPref:Landroid/content/SharedPreferences;
    invoke-static {v2}, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->access$100(Lcom/touchtype/personalizer/PersonalizerSettingsFragment;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 692
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v2, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment$7;->this$0:Lcom/touchtype/personalizer/PersonalizerSettingsFragment;

    const-string v3, "SETTINGS_DEFAULT_USE_LIVE_LANGUAGE"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    .line 693
    .local v1, "usePredictiondata":Landroid/preference/CheckBoxPreference;
    if-eqz v1, :cond_0

    .line 694
    invoke-virtual {v1, v4}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 696
    :cond_0
    iget-object v2, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment$7;->val$chkbox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 697
    const-string v2, "first_live_language_execution"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 698
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 703
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 704
    return-void

    .line 700
    :cond_1
    const-string v2, "first_live_language_execution"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 701
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method
