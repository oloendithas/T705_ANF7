.class Lcom/diotek/ime/implement/setting/HelpIntegration$5;
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
    .line 318
    iput-object p1, p0, Lcom/diotek/ime/implement/setting/HelpIntegration$5;->this$0:Lcom/diotek/ime/implement/setting/HelpIntegration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 322
    iget-object v3, p0, Lcom/diotek/ime/implement/setting/HelpIntegration$5;->this$0:Lcom/diotek/ime/implement/setting/HelpIntegration;

    const v4, 0x7f080072

    invoke-virtual {v3, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 323
    .local v2, "helpHandwritingLayout":Landroid/widget/LinearLayout;
    iget-object v3, p0, Lcom/diotek/ime/implement/setting/HelpIntegration$5;->this$0:Lcom/diotek/ime/implement/setting/HelpIntegration;

    const v4, 0x7f08006f

    invoke-virtual {v3, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 324
    .local v0, "helpHandwritingBackgroundLayout":Landroid/widget/LinearLayout;
    iget-object v3, p0, Lcom/diotek/ime/implement/setting/HelpIntegration$5;->this$0:Lcom/diotek/ime/implement/setting/HelpIntegration;

    const v4, 0x7f080071

    invoke-virtual {v3, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 325
    .local v1, "helpHandwritingDropdownImage":Landroid/widget/ImageView;
    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 326
    iget-object v3, p0, Lcom/diotek/ime/implement/setting/HelpIntegration$5;->this$0:Lcom/diotek/ime/implement/setting/HelpIntegration;

    iget-object v4, p0, Lcom/diotek/ime/implement/setting/HelpIntegration$5;->this$0:Lcom/diotek/ime/implement/setting/HelpIntegration;

    iget-object v5, p0, Lcom/diotek/ime/implement/setting/HelpIntegration$5;->this$0:Lcom/diotek/ime/implement/setting/HelpIntegration;

    # getter for: Lcom/diotek/ime/implement/setting/HelpIntegration;->mHelpHandwritingButtonState:Z
    invoke-static {v5}, Lcom/diotek/ime/implement/setting/HelpIntegration;->access$100(Lcom/diotek/ime/implement/setting/HelpIntegration;)Z

    move-result v5

    invoke-virtual {v4, v2, v0, v1, v5}, Lcom/diotek/ime/implement/setting/HelpIntegration;->updateTargetHelpContent(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/ImageView;Z)Z

    move-result v4

    # setter for: Lcom/diotek/ime/implement/setting/HelpIntegration;->mHelpHandwritingButtonState:Z
    invoke-static {v3, v4}, Lcom/diotek/ime/implement/setting/HelpIntegration;->access$102(Lcom/diotek/ime/implement/setting/HelpIntegration;Z)Z

    .line 328
    :cond_0
    return-void
.end method
