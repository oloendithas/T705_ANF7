.class Lcom/sec/android/app/contacts/widget/TutorialPopupView$2;
.super Ljava/lang/Object;
.source "TutorialPopupView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/contacts/widget/TutorialPopupView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILcom/sec/android/app/contacts/widget/TutorialPopupView$LAYOUT_TYPE;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/widget/TutorialPopupView;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/widget/TutorialPopupView;)V
    .locals 0

    .prologue
    .line 151
    iput-object p1, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView$2;->this$0:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x0

    .line 155
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 156
    .local v0, "action":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 157
    iget-object v1, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView$2;->this$0:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    # getter for: Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mContainer:Landroid/view/View;
    invoke-static {v1}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->access$000(Lcom/sec/android/app/contacts/widget/TutorialPopupView;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    .line 158
    iget-object v1, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView$2;->this$0:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    # getter for: Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mOnIndicatorTouchListener:Lcom/sec/android/app/contacts/widget/TutorialPopupView$OnIndicatorTouchListener;
    invoke-static {v1}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->access$100(Lcom/sec/android/app/contacts/widget/TutorialPopupView;)Lcom/sec/android/app/contacts/widget/TutorialPopupView$OnIndicatorTouchListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 159
    iget-object v1, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView$2;->this$0:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    # getter for: Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mOnIndicatorTouchListener:Lcom/sec/android/app/contacts/widget/TutorialPopupView$OnIndicatorTouchListener;
    invoke-static {v1}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->access$100(Lcom/sec/android/app/contacts/widget/TutorialPopupView;)Lcom/sec/android/app/contacts/widget/TutorialPopupView$OnIndicatorTouchListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/contacts/widget/TutorialPopupView$OnIndicatorTouchListener;->onTouch()V

    .line 161
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView$2;->this$0:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    # invokes: Lcom/sec/android/app/contacts/widget/TutorialPopupView;->dispatchTouchEventToActivity(Landroid/view/MotionEvent;)V
    invoke-static {v1, p2}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->access$200(Lcom/sec/android/app/contacts/widget/TutorialPopupView;Landroid/view/MotionEvent;)V

    .line 163
    iget-object v1, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView$2;->this$0:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    # getter for: Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mContainer:Landroid/view/View;
    invoke-static {v1}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->access$000(Lcom/sec/android/app/contacts/widget/TutorialPopupView;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 176
    :cond_1
    :goto_0
    return v4

    .line 165
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView$2;->this$0:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    # getter for: Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mIgnoreTouchEventOutOfIndicator:Z
    invoke-static {v1}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->access$300(Lcom/sec/android/app/contacts/widget/TutorialPopupView;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 166
    iget-object v1, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView$2;->this$0:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    # getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->access$600(Lcom/sec/android/app/contacts/widget/TutorialPopupView;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView$2;->this$0:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    # getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->access$700(Lcom/sec/android/app/contacts/widget/TutorialPopupView;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0e0432

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 168
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView$2;->this$0:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    # invokes: Lcom/sec/android/app/contacts/widget/TutorialPopupView;->dispatchTouchEventToActivity(Landroid/view/MotionEvent;)V
    invoke-static {v1, p2}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->access$200(Lcom/sec/android/app/contacts/widget/TutorialPopupView;Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 172
    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView$2;->this$0:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    # getter for: Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mIgnoreTouchEventOutOfIndicator:Z
    invoke-static {v1}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->access$300(Lcom/sec/android/app/contacts/widget/TutorialPopupView;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 173
    iget-object v1, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView$2;->this$0:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    # invokes: Lcom/sec/android/app/contacts/widget/TutorialPopupView;->dispatchTouchEventToActivity(Landroid/view/MotionEvent;)V
    invoke-static {v1, p2}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->access$200(Lcom/sec/android/app/contacts/widget/TutorialPopupView;Landroid/view/MotionEvent;)V

    goto :goto_0
.end method
