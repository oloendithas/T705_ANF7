.class Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$7;
.super Ljava/lang/Object;
.source "SwiftkeyLanguagePreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->MobileDataWarningForRoam()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;

.field final synthetic val$chkbox:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;Landroid/widget/CheckBox;)V
    .locals 0

    .prologue
    .line 769
    iput-object p1, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$7;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;

    iput-object p2, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$7;->val$chkbox:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 772
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$7;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;

    iget-object v1, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$7;->val$chkbox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    # setter for: Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mIsCheckboxDontShowDownloadForRoam:Z
    invoke-static {v0, v1}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->access$1902(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;Z)Z

    .line 773
    return-void
.end method
