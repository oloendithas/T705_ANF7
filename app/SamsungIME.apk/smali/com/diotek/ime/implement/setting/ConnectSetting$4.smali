.class Lcom/diotek/ime/implement/setting/ConnectSetting$4;
.super Ljava/lang/Object;
.source "ConnectSetting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/diotek/ime/implement/setting/ConnectSetting;->showXt9GuideDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/diotek/ime/implement/setting/ConnectSetting;


# direct methods
.method constructor <init>(Lcom/diotek/ime/implement/setting/ConnectSetting;)V
    .locals 0

    .prologue
    .line 441
    iput-object p1, p0, Lcom/diotek/ime/implement/setting/ConnectSetting$4;->this$0:Lcom/diotek/ime/implement/setting/ConnectSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 447
    iget-object v1, p0, Lcom/diotek/ime/implement/setting/ConnectSetting$4;->this$0:Lcom/diotek/ime/implement/setting/ConnectSetting;

    const-string v2, "support_dlm"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 449
    .local v0, "usePredictiondata":Landroid/preference/CheckBoxPreference;
    if-eqz v0, :cond_0

    .line 451
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 455
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 457
    return-void
.end method
