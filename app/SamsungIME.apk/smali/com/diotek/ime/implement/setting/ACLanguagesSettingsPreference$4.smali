.class Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference$4;
.super Ljava/lang/Object;
.source "ACLanguagesSettingsPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->MobileDataWarningForRoam()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;

.field final synthetic val$chkbox:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;Landroid/widget/CheckBox;)V
    .locals 0

    .prologue
    .line 446
    iput-object p1, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference$4;->this$0:Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;

    iput-object p2, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference$4;->val$chkbox:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 449
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference$4;->this$0:Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;

    iget-object v1, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference$4;->val$chkbox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    # setter for: Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->mIsCheckboxDontShowDownloadForRoam:Z
    invoke-static {v0, v1}, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->access$502(Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;Z)Z

    .line 450
    return-void
.end method
