.class Lcom/diotek/ime/implement/setting/HelpIntegration$6;
.super Ljava/lang/Object;
.source "HelpIntegration.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/diotek/ime/implement/setting/HelpIntegration;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/diotek/ime/implement/setting/HelpIntegration;


# direct methods
.method constructor <init>(Lcom/diotek/ime/implement/setting/HelpIntegration;)V
    .locals 0

    .prologue
    .line 334
    iput-object p1, p0, Lcom/diotek/ime/implement/setting/HelpIntegration$6;->this$0:Lcom/diotek/ime/implement/setting/HelpIntegration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 338
    iget-object v3, p0, Lcom/diotek/ime/implement/setting/HelpIntegration$6;->this$0:Lcom/diotek/ime/implement/setting/HelpIntegration;

    const v4, 0x7f080088

    invoke-virtual {v3, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 339
    .local v2, "helpGestureGuideLayout":Landroid/widget/LinearLayout;
    iget-object v3, p0, Lcom/diotek/ime/implement/setting/HelpIntegration$6;->this$0:Lcom/diotek/ime/implement/setting/HelpIntegration;

    const v4, 0x7f080085

    invoke-virtual {v3, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 340
    .local v0, "helpGestureGuideBackgroundLayout":Landroid/widget/LinearLayout;
    iget-object v3, p0, Lcom/diotek/ime/implement/setting/HelpIntegration$6;->this$0:Lcom/diotek/ime/implement/setting/HelpIntegration;

    const v4, 0x7f080087

    invoke-virtual {v3, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 341
    .local v1, "helpGestureGuideDropdownImage":Landroid/widget/ImageView;
    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 342
    iget-object v3, p0, Lcom/diotek/ime/implement/setting/HelpIntegration$6;->this$0:Lcom/diotek/ime/implement/setting/HelpIntegration;

    iget-object v4, p0, Lcom/diotek/ime/implement/setting/HelpIntegration$6;->this$0:Lcom/diotek/ime/implement/setting/HelpIntegration;

    iget-object v5, p0, Lcom/diotek/ime/implement/setting/HelpIntegration$6;->this$0:Lcom/diotek/ime/implement/setting/HelpIntegration;

    # getter for: Lcom/diotek/ime/implement/setting/HelpIntegration;->mHelpGestureGuideButtonState:Z
    invoke-static {v5}, Lcom/diotek/ime/implement/setting/HelpIntegration;->access$200(Lcom/diotek/ime/implement/setting/HelpIntegration;)Z

    move-result v5

    invoke-virtual {v4, v2, v0, v1, v5}, Lcom/diotek/ime/implement/setting/HelpIntegration;->updateTargetHelpContent(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/ImageView;Z)Z

    move-result v4

    # setter for: Lcom/diotek/ime/implement/setting/HelpIntegration;->mHelpGestureGuideButtonState:Z
    invoke-static {v3, v4}, Lcom/diotek/ime/implement/setting/HelpIntegration;->access$202(Lcom/diotek/ime/implement/setting/HelpIntegration;Z)Z

    .line 344
    :cond_0
    return-void
.end method
