.class Lcom/diotek/ime/framework/view/TipsDialog$10;
.super Ljava/lang/Object;
.source "TipsDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/diotek/ime/framework/view/TipsDialog;->showTraceGuideDialog(Landroid/view/View;)V
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
    .line 473
    iput-object p1, p0, Lcom/diotek/ime/framework/view/TipsDialog$10;->this$0:Lcom/diotek/ime/framework/view/TipsDialog;

    iput-object p2, p0, Lcom/diotek/ime/framework/view/TipsDialog$10;->val$chkbox:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 476
    iget-object v0, p0, Lcom/diotek/ime/framework/view/TipsDialog$10;->this$0:Lcom/diotek/ime/framework/view/TipsDialog;

    iget-object v1, p0, Lcom/diotek/ime/framework/view/TipsDialog$10;->val$chkbox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    # setter for: Lcom/diotek/ime/framework/view/TipsDialog;->mIsCheckDontShowTraceGuide:Z
    invoke-static {v0, v1}, Lcom/diotek/ime/framework/view/TipsDialog;->access$502(Lcom/diotek/ime/framework/view/TipsDialog;Z)Z

    .line 477
    iget-object v0, p0, Lcom/diotek/ime/framework/view/TipsDialog$10;->this$0:Lcom/diotek/ime/framework/view/TipsDialog;

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v1, "IS_INTERMEDIATE_TRACEGUIDE_CHECKBOX_TICKED"

    iget-object v2, p0, Lcom/diotek/ime/framework/view/TipsDialog$10;->this$0:Lcom/diotek/ime/framework/view/TipsDialog;

    # getter for: Lcom/diotek/ime/framework/view/TipsDialog;->mIsCheckDontShowTraceGuide:Z
    invoke-static {v2}, Lcom/diotek/ime/framework/view/TipsDialog;->access$500(Lcom/diotek/ime/framework/view/TipsDialog;)Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    .line 480
    return-void
.end method
