.class Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment$2;
.super Ljava/lang/Object;
.source "AutoReplacementSettingsFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment;


# direct methods
.method constructor <init>(Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment;)V
    .locals 0

    .prologue
    .line 228
    iput-object p1, p0, Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment$2;->this$0:Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    .line 231
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    .local v1, "newBoolean":Z
    move-object v0, p1

    .line 232
    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 233
    .local v0, "cp":Landroid/preference/CheckBoxPreference;
    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 234
    if-eqz v1, :cond_0

    .line 235
    iget-object v2, p0, Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment$2;->this$0:Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment;

    # getter for: Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment;->settingActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment;->access$200(Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment;)Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0d020d

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 237
    :cond_0
    return v4
.end method
