.class Landroid/view/View$SendViewStateChangedAccessibilityEvent;
.super Ljava/lang/Object;
.source "View.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SendViewStateChangedAccessibilityEvent"
.end annotation


# instance fields
.field private mChangeTypes:I

.field private mLastEventTimeMillis:J

.field private mPosted:Z

.field private mPostedWithDelay:Z

.field final synthetic this$0:Landroid/view/View;


# direct methods
.method private constructor <init>(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 20530
    iput-object p1, p0, Landroid/view/View$SendViewStateChangedAccessibilityEvent;->this$0:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20531
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/View$SendViewStateChangedAccessibilityEvent;->mChangeTypes:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/view/View;Landroid/view/View$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/view/View;
    .param p2, "x1"    # Landroid/view/View$1;

    .prologue
    .line 20530
    invoke-direct {p0, p1}, Landroid/view/View$SendViewStateChangedAccessibilityEvent;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 20538
    iput-boolean v3, p0, Landroid/view/View$SendViewStateChangedAccessibilityEvent;->mPosted:Z

    .line 20539
    iput-boolean v3, p0, Landroid/view/View$SendViewStateChangedAccessibilityEvent;->mPostedWithDelay:Z

    .line 20540
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/view/View$SendViewStateChangedAccessibilityEvent;->mLastEventTimeMillis:J

    .line 20541
    iget-object v1, p0, Landroid/view/View$SendViewStateChangedAccessibilityEvent;->this$0:Landroid/view/View;

    iget-object v1, v1, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 20542
    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 20543
    .local v0, "event":Landroid/view/accessibility/AccessibilityEvent;
    const/16 v1, 0x800

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setEventType(I)V

    .line 20544
    iget v1, p0, Landroid/view/View$SendViewStateChangedAccessibilityEvent;->mChangeTypes:I

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setContentChangeTypes(I)V

    .line 20545
    iget-object v1, p0, Landroid/view/View$SendViewStateChangedAccessibilityEvent;->this$0:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 20547
    .end local v0    # "event":Landroid/view/accessibility/AccessibilityEvent;
    :cond_2c
    iput v3, p0, Landroid/view/View$SendViewStateChangedAccessibilityEvent;->mChangeTypes:I

    .line 20548
    return-void
.end method

.method public runOrPost(I)V
    .registers 11
    .param p1, "changeType"    # I

    .prologue
    const/4 v8, 0x1

    .line 20551
    iget v4, p0, Landroid/view/View$SendViewStateChangedAccessibilityEvent;->mChangeTypes:I

    or-int/2addr v4, p1

    iput v4, p0, Landroid/view/View$SendViewStateChangedAccessibilityEvent;->mChangeTypes:I

    .line 20555
    iget-object v4, p0, Landroid/view/View$SendViewStateChangedAccessibilityEvent;->this$0:Landroid/view/View;

    # invokes: Landroid/view/View;->inLiveRegion()Z
    invoke-static {v4}, Landroid/view/View;->access$3000(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 20557
    iget-boolean v4, p0, Landroid/view/View$SendViewStateChangedAccessibilityEvent;->mPostedWithDelay:Z

    if-eqz v4, :cond_1a

    .line 20558
    iget-object v4, p0, Landroid/view/View$SendViewStateChangedAccessibilityEvent;->this$0:Landroid/view/View;

    invoke-virtual {v4, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 20559
    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/view/View$SendViewStateChangedAccessibilityEvent;->mPostedWithDelay:Z

    .line 20562
    :cond_1a
    iget-boolean v4, p0, Landroid/view/View$SendViewStateChangedAccessibilityEvent;->mPosted:Z

    if-nez v4, :cond_25

    .line 20563
    iget-object v4, p0, Landroid/view/View$SendViewStateChangedAccessibilityEvent;->this$0:Landroid/view/View;

    invoke-virtual {v4, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 20564
    iput-boolean v8, p0, Landroid/view/View$SendViewStateChangedAccessibilityEvent;->mPosted:Z

    .line 20583
    :cond_25
    :goto_25
    return-void

    .line 20569
    :cond_26
    iget-boolean v4, p0, Landroid/view/View$SendViewStateChangedAccessibilityEvent;->mPosted:Z

    if-nez v4, :cond_25

    .line 20572
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Landroid/view/View$SendViewStateChangedAccessibilityEvent;->mLastEventTimeMillis:J

    sub-long v2, v4, v6

    .line 20573
    .local v2, "timeSinceLastMillis":J
    invoke-static {}, Landroid/view/ViewConfiguration;->getSendRecurringAccessibilityEventsInterval()J

    move-result-wide v0

    .line 20575
    .local v0, "minEventIntevalMillis":J
    cmp-long v4, v2, v0

    if-ltz v4, :cond_43

    .line 20576
    iget-object v4, p0, Landroid/view/View$SendViewStateChangedAccessibilityEvent;->this$0:Landroid/view/View;

    invoke-virtual {v4, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 20577
    invoke-virtual {p0}, Landroid/view/View$SendViewStateChangedAccessibilityEvent;->run()V

    goto :goto_25

    .line 20579
    :cond_43
    iget-object v4, p0, Landroid/view/View$SendViewStateChangedAccessibilityEvent;->this$0:Landroid/view/View;

    sub-long v5, v0, v2

    invoke-virtual {v4, p0, v5, v6}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 20580
    iput-boolean v8, p0, Landroid/view/View$SendViewStateChangedAccessibilityEvent;->mPosted:Z

    .line 20581
    iput-boolean v8, p0, Landroid/view/View$SendViewStateChangedAccessibilityEvent;->mPostedWithDelay:Z

    goto :goto_25
.end method