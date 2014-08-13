.class Lcom/touchtype/personalizer/PersonalizerSettingsFragment$10;
.super Ljava/lang/Object;
.source "PersonalizerSettingsFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/touchtype/personalizer/PersonalizerSettingsFragment;
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
    .line 735
    iput-object p1, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment$10;->this$0:Lcom/touchtype/personalizer/PersonalizerSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 6
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v5, 0x0

    .line 738
    iget-object v3, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment$10;->this$0:Lcom/touchtype/personalizer/PersonalizerSettingsFragment;

    # getter for: Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->mSPref:Landroid/content/SharedPreferences;
    invoke-static {v3}, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->access$100(Lcom/touchtype/personalizer/PersonalizerSettingsFragment;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 739
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "SETTINGS_DEFAULT_PREDICTION_ON"

    invoke-interface {v1, v3, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 740
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 741
    iget-object v3, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment$10;->this$0:Lcom/touchtype/personalizer/PersonalizerSettingsFragment;

    const-string v4, "SETTINGS_USE_STANDARD_DATA"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 742
    .local v0, "cp":Landroid/preference/CheckBoxPreference;
    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 743
    iget-object v3, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment$10;->this$0:Lcom/touchtype/personalizer/PersonalizerSettingsFragment;

    const-string v4, "SETTINGS_DEFAULT_USE_LIVE_LANGUAGE"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .end local v0    # "cp":Landroid/preference/CheckBoxPreference;
    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 744
    .restart local v0    # "cp":Landroid/preference/CheckBoxPreference;
    if-eqz v0, :cond_0

    .line 745
    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 747
    :cond_0
    iget-object v3, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment$10;->this$0:Lcom/touchtype/personalizer/PersonalizerSettingsFragment;

    # getter for: Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->mSPref:Landroid/content/SharedPreferences;
    invoke-static {v3}, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->access$100(Lcom/touchtype/personalizer/PersonalizerSettingsFragment;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "SETTINGS_DEFAULT_TRACE"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 748
    .local v2, "useContinuousInput":Z
    if-eqz v2, :cond_1

    .line 749
    const-string v3, "SETTINGS_DEFAULT_KEYPAD_FLICK_UMLAUT"

    invoke-interface {v1, v3, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 750
    const-string v3, "SETTINGS_DEFAULT_KEYPAD_POINTING"

    invoke-interface {v1, v3, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 751
    const-string v3, "SETTINGS_DEFAULT_TRACE"

    invoke-interface {v1, v3, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 752
    const-string v3, "settings_keyboard_swipe_none"

    const/4 v4, 0x1

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 753
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 757
    :cond_1
    return-void
.end method
