.class Lcom/touchtype/personalizer/PersonalizerSettingsFragment$1;
.super Ljava/lang/Object;
.source "PersonalizerSettingsFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->onCreate(Landroid/os/Bundle;)V
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
    .line 145
    iput-object p1, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment$1;->this$0:Lcom/touchtype/personalizer/PersonalizerSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 6
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v5, 0x1

    .line 148
    instance-of v3, p1, Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 149
    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 150
    .local v0, "checkPref":Landroid/preference/CheckBoxPreference;
    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v1

    .line 151
    .local v1, "isChecked":Z
    iget-object v3, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment$1;->this$0:Lcom/touchtype/personalizer/PersonalizerSettingsFragment;

    # getter for: Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->mSPref:Landroid/content/SharedPreferences;
    invoke-static {v3}, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->access$100(Lcom/touchtype/personalizer/PersonalizerSettingsFragment;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "first_live_language_execution"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 152
    .local v2, "isFirstExecution":Z
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 163
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 164
    iget-object v3, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment$1;->this$0:Lcom/touchtype/personalizer/PersonalizerSettingsFragment;

    # invokes: Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->showLiveLanguageGuideDialog()V
    invoke-static {v3}, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->access$200(Lcom/touchtype/personalizer/PersonalizerSettingsFragment;)V

    .line 168
    .end local v0    # "checkPref":Landroid/preference/CheckBoxPreference;
    .end local v1    # "isChecked":Z
    .end local v2    # "isFirstExecution":Z
    :cond_0
    return v5
.end method
