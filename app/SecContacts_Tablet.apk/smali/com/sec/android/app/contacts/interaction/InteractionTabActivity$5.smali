.class Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$5;
.super Ljava/lang/Object;
.source "InteractionTabActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;)V
    .locals 0

    .prologue
    .line 1135
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$5;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1139
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$5;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    # getter for: Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;
    invoke-static {v2}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->access$1200(Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;)Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$5;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    # getter for: Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;
    invoke-static {v2}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->access$1200(Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;)Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->isMultiWindow()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1152
    :cond_0
    :goto_0
    return-void

    .line 1143
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$5;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    # getter for: Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mDeco:Landroid/view/View;
    invoke-static {v2}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->access$1300(Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 1145
    .local v1, "newWidth":I
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$5;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    # getter for: Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mMainView:Landroid/view/View;
    invoke-static {v2}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->access$1400(Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1146
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1148
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$5;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    # getter for: Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mMainView:Landroid/view/View;
    invoke-static {v2}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->access$1400(Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1149
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$5;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    # getter for: Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mMainView:Landroid/view/View;
    invoke-static {v2}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->access$1400(Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3, v3, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 1150
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$5;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    # getter for: Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mMainView:Landroid/view/View;
    invoke-static {v2}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->access$1400(Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    goto :goto_0
.end method
