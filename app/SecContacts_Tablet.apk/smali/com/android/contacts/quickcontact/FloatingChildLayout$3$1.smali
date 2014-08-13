.class Lcom/android/contacts/quickcontact/FloatingChildLayout$3$1;
.super Ljava/lang/Object;
.source "FloatingChildLayout.java"

# interfaces
.implements Lcom/sec/android/app/contacts/widget/TutorialPopupView$OnIndicatorTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/quickcontact/FloatingChildLayout$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/contacts/quickcontact/FloatingChildLayout$3;

.field final synthetic val$create_button:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/contacts/quickcontact/FloatingChildLayout$3;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 355
    iput-object p1, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout$3$1;->this$1:Lcom/android/contacts/quickcontact/FloatingChildLayout$3;

    iput-object p2, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout$3$1;->val$create_button:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch()V
    .locals 10

    .prologue
    .line 358
    iget-object v4, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout$3$1;->this$1:Lcom/android/contacts/quickcontact/FloatingChildLayout$3;

    iget-object v4, v4, Lcom/android/contacts/quickcontact/FloatingChildLayout$3;->this$0:Lcom/android/contacts/quickcontact/FloatingChildLayout;

    # getter for: Lcom/android/contacts/quickcontact/FloatingChildLayout;->mTutorialPopupView:Lcom/sec/android/app/contacts/widget/TutorialPopupView;
    invoke-static {v4}, Lcom/android/contacts/quickcontact/FloatingChildLayout;->access$300(Lcom/android/contacts/quickcontact/FloatingChildLayout;)Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->hide()V

    .line 359
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 360
    .local v0, "downTime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 361
    .local v2, "eventTime":J
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 363
    .local v8, "down_event":Landroid/view/MotionEvent;
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v9

    .line 365
    .local v9, "up_event":Landroid/view/MotionEvent;
    iget-object v4, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout$3$1;->val$create_button:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 366
    iget-object v4, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout$3$1;->val$create_button:Landroid/view/View;

    invoke-virtual {v4, v9}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 367
    return-void
.end method
