.class Lcom/diotek/ime/implement/setting/Xt9AdvancedSettings$4;
.super Ljava/lang/Object;
.source "Xt9AdvancedSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/diotek/ime/implement/setting/Xt9AdvancedSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/diotek/ime/implement/setting/Xt9AdvancedSettings;


# direct methods
.method constructor <init>(Lcom/diotek/ime/implement/setting/Xt9AdvancedSettings;)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lcom/diotek/ime/implement/setting/Xt9AdvancedSettings$4;->this$0:Lcom/diotek/ime/implement/setting/Xt9AdvancedSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 4
    .param p1, "arg0"    # Landroid/content/DialogInterface;

    .prologue
    const/4 v3, 0x0

    .line 128
    iget-object v1, p0, Lcom/diotek/ime/implement/setting/Xt9AdvancedSettings$4;->this$0:Lcom/diotek/ime/implement/setting/Xt9AdvancedSettings;

    const-string v2, "SETTINGS_DEFAULT_TRACE"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 129
    .local v0, "cp":Landroid/preference/CheckBoxPreference;
    invoke-virtual {v0, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 130
    # setter for: Lcom/diotek/ime/implement/setting/Xt9AdvancedSettings;->TracePopup2:Z
    invoke-static {v3}, Lcom/diotek/ime/implement/setting/Xt9AdvancedSettings;->access$202(Z)Z

    .line 131
    return-void
.end method
