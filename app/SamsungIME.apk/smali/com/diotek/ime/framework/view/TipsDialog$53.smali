.class Lcom/diotek/ime/framework/view/TipsDialog$53;
.super Ljava/lang/Object;
.source "TipsDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/diotek/ime/framework/view/TipsDialog;->showTipsSwiftKeyLearnsGuideDialog(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/diotek/ime/framework/view/TipsDialog;

.field final synthetic val$chkbox:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/diotek/ime/framework/view/TipsDialog;Landroid/widget/CheckBox;)V
    .locals 0

    .prologue
    .line 1863
    iput-object p1, p0, Lcom/diotek/ime/framework/view/TipsDialog$53;->this$0:Lcom/diotek/ime/framework/view/TipsDialog;

    iput-object p2, p0, Lcom/diotek/ime/framework/view/TipsDialog$53;->val$chkbox:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1866
    iget-object v0, p0, Lcom/diotek/ime/framework/view/TipsDialog$53;->this$0:Lcom/diotek/ime/framework/view/TipsDialog;

    iget-object v1, p0, Lcom/diotek/ime/framework/view/TipsDialog$53;->val$chkbox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    # setter for: Lcom/diotek/ime/framework/view/TipsDialog;->mIsTipCheckDontShowAllGuide:Z
    invoke-static {v0, v1}, Lcom/diotek/ime/framework/view/TipsDialog;->access$902(Lcom/diotek/ime/framework/view/TipsDialog;Z)Z

    .line 1867
    return-void
.end method
