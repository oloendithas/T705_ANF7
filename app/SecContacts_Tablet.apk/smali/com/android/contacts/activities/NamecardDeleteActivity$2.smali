.class Lcom/android/contacts/activities/NamecardDeleteActivity$2;
.super Ljava/lang/Object;
.source "NamecardDeleteActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/activities/NamecardDeleteActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/activities/NamecardDeleteActivity;


# direct methods
.method constructor <init>(Lcom/android/contacts/activities/NamecardDeleteActivity;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/android/contacts/activities/NamecardDeleteActivity$2;->this$0:Lcom/android/contacts/activities/NamecardDeleteActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 85
    iget-object v2, p0, Lcom/android/contacts/activities/NamecardDeleteActivity$2;->this$0:Lcom/android/contacts/activities/NamecardDeleteActivity;

    # getter for: Lcom/android/contacts/activities/NamecardDeleteActivity;->mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;
    invoke-static {v2}, Lcom/android/contacts/activities/NamecardDeleteActivity;->access$200(Lcom/android/contacts/activities/NamecardDeleteActivity;)Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/contacts/activities/NamecardDeleteActivity$2;->this$0:Lcom/android/contacts/activities/NamecardDeleteActivity;

    # getter for: Lcom/android/contacts/activities/NamecardDeleteActivity;->mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;
    invoke-static {v2}, Lcom/android/contacts/activities/NamecardDeleteActivity;->access$200(Lcom/android/contacts/activities/NamecardDeleteActivity;)Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->isMultiWindow()Z

    move-result v2

    if-nez v2, :cond_1

    .line 98
    :cond_0
    :goto_0
    return-void

    .line 89
    :cond_1
    iget-object v2, p0, Lcom/android/contacts/activities/NamecardDeleteActivity$2;->this$0:Lcom/android/contacts/activities/NamecardDeleteActivity;

    # getter for: Lcom/android/contacts/activities/NamecardDeleteActivity;->mDeco:Landroid/view/View;
    invoke-static {v2}, Lcom/android/contacts/activities/NamecardDeleteActivity;->access$300(Lcom/android/contacts/activities/NamecardDeleteActivity;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 91
    .local v1, "newWidth":I
    iget-object v2, p0, Lcom/android/contacts/activities/NamecardDeleteActivity$2;->this$0:Lcom/android/contacts/activities/NamecardDeleteActivity;

    # getter for: Lcom/android/contacts/activities/NamecardDeleteActivity;->mMainView:Landroid/view/View;
    invoke-static {v2}, Lcom/android/contacts/activities/NamecardDeleteActivity;->access$400(Lcom/android/contacts/activities/NamecardDeleteActivity;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 92
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 94
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v2, p0, Lcom/android/contacts/activities/NamecardDeleteActivity$2;->this$0:Lcom/android/contacts/activities/NamecardDeleteActivity;

    # getter for: Lcom/android/contacts/activities/NamecardDeleteActivity;->mMainView:Landroid/view/View;
    invoke-static {v2}, Lcom/android/contacts/activities/NamecardDeleteActivity;->access$400(Lcom/android/contacts/activities/NamecardDeleteActivity;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 95
    iget-object v2, p0, Lcom/android/contacts/activities/NamecardDeleteActivity$2;->this$0:Lcom/android/contacts/activities/NamecardDeleteActivity;

    # getter for: Lcom/android/contacts/activities/NamecardDeleteActivity;->mMainView:Landroid/view/View;
    invoke-static {v2}, Lcom/android/contacts/activities/NamecardDeleteActivity;->access$400(Lcom/android/contacts/activities/NamecardDeleteActivity;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3, v3, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 96
    iget-object v2, p0, Lcom/android/contacts/activities/NamecardDeleteActivity$2;->this$0:Lcom/android/contacts/activities/NamecardDeleteActivity;

    # getter for: Lcom/android/contacts/activities/NamecardDeleteActivity;->mMainView:Landroid/view/View;
    invoke-static {v2}, Lcom/android/contacts/activities/NamecardDeleteActivity;->access$400(Lcom/android/contacts/activities/NamecardDeleteActivity;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    goto :goto_0
.end method
